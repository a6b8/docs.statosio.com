def benchmark_prepare( diagram, sort )  
    def benchmark_scrape_struct( str, from, to )
        struct = {
            from: {
                str: nil,
                index: nil
            },
            to: {
                str: nil,
                index: nil
            }
        }
      
        struct[:from][:str] = from
        struct[:from][:index] = str.index( struct[:from][:str] )
        str = str[ struct[:from][:index] + struct[:from][:str].length, str.length ]

        struct[:to][:str] = to
        struct[:to][:index] = str.index( struct[:to][:str] )

        return str[ 0, struct[:to][:index] ].strip
    end
  

    item = {
        nr: nil,
        description: nil,
        camel_case: nil,
        dom_id: nil,
        link: nil,
        example: {
            name: nil,
            char: nil
        },
        option: {
            from: nil,
            to: nil,
            hash: nil,
            json: nil
        },
        str: {
            original: nil,
            modified: nil,
            code: nil
        },
        code: nil
    }

    item[:str][:original] = diagram

    item[:nr] = sort
    item[:description] = benchmark_scrape_struct( item[:str][:original], ' <div style="display:none;">', '</div>' )
    item[:camel_case] = benchmark_scrape_struct( item[:str][:original], '<title>', '</title>' ).split( ' - ' )[ 1 ]
    item[:dom_id] = ''
    item[:dom_id] << 'example-'
    item[:dom_id] << item[:nr].to_s
    item[:link] = benchmark_scrape_struct( item[:str][:original], 'h.setAttribute("href", "', '")' )
    item[:example][:name] = item[:link]
        .split( '#' )[ 1 ]
        .gsub( '-', ' ' )
        .split( ' ' )
        .map { | d | d[ 0, 1 ].upcase + d[ 1, d.length ] }
        .join( ' ' ) 
    item[:example][:char] = item[:example][:name].split( ' ' )[ 1 ]
  
    tmp = benchmark_scrape_struct( item[:str][:original], 'd3.statosio(', '}' ) + '}'
    item[:option][:from] = '{ ' + benchmark_scrape_struct( tmp, '{', '}' ) + ' }'
    item[:option][:to] = item[:option][:from].gsub( 'self', item[:camel_case] )
    item[:option][:hash] = JSON.parse( item[:option][:to] )
    item[:option][:hash]["viewDomId"] = item[:dom_id]
    item[:option][:json] = item[:option][:hash].to_json

    item[:str][:modified] = item[:str][:original].gsub( item[:option][:from], item[:option][:json] )
  
    tmp = ''
    tmp << 'd3.statosio('
    tmp << benchmark_scrape_struct( item[:str][:modified], 'd3.statosio(', ')' )
    tmp << ')'
    tmp = tmp.split( "\n" ).map { | d | d.strip }.join( '' ).split(' ').join('')
  
    item[:code] = ''
    item[:code] << "\n"
    item[:code] << '<div id="'
    item[:code] << item[:dom_id]
    item[:code] << '">'
    item[:code] << "\n"
    item[:code] << "\t<script>\n" 
    item[:code] << "\t\t"
    item[:code] << tmp + "\n"
    item[:code] << "\t</script>"
    item[:code] << "\n"
    item[:code] << '</div>'
  
    return item
end


def benchmark_create( diagrams, times, order )
    def benchmark_set_path( file )
        path = ''
        path << './benchmarks/' + 
        path << file
        return path
    end

  
    def benchmark_detail_create( struct, diagrams, times )
        strs = ''
        strs << "---\n"
        strs << 'sort: '
        strs << struct[:order]  + "\n"
        strs << 'title: '
        strs << struct[:headline] + "\n"
        strs << "---\n"
        strs << "\n"
        strs << "# "
        strs << struct[:headline]
        strs << "\n\n"
        strs << "## Result"
        strs << "\n\n"

        strs << "| **Name** | **Result** |\n"

        strs << "| Loading Time "
        strs << "| <insert id='"
        strs << struct[:id][:loading_time] 
        strs << "'>waiting..</insert> |"
        strs << "\n"

        strs << "| Dom Elements "
        strs << "| <insert id='"
        strs << struct[:id][:dom_elements] 
        strs << "'>waiting..</insert> |"
        strs << "\n\n"

        strs << "## Diagrams"
        strs << "\n\n"
        for i in 0..times - 1
            sort = i + 1
            item = benchmark_prepare( diagrams[ i ], sort )
            strs << "### "
            strs << sort.to_s + '. '
            strs << item[:camel_case]
            strs << ' '
            strs << '('
            strs << item[:example][:char] + ')'
            strs << "\n"
            strs << item[:code]
            strs << "\n"
            strs << '['
            strs << 'More Details' + ']('
            strs << item[:link]
            strs << ')'
            strs << ' | '
            strs << item[:description]
            strs << "\n\n"
        end
        return strs
    end
  

    struct = {
        headline: nil,
        order: nil,
        id: {
            loading_time: nil,
            dom_elements: nil
        }
    }

    struct[:headline] = ''
    struct[:headline] << times.to_s
    times == 1 ? struct[:headline] << ' Diagram' : struct[:headline] << ' Diagrams'
    struct[:order] = order.to_s
    struct[:id][:loading_time] = 'statosioLoadingTime'
    struct[:id][:dom_elements] = 'statosioDomElements'  
 
    detail = benchmark_detail_create( struct, diagrams, times )
    path = benchmark_set_path( 'benchmark-' + order.to_s + '.md' )
    FileUtils.mkdir_p( File.dirname( path ) )
    File.open( path, "w" ) { | f | f.write( detail ) }
  
    require './__generate/libs/benchmark/readme'
    readme = benchmark_readme( 3 )
    path = benchmark_set_path( 'README.md' )
    File.open( path, "w" ) { | f | f.write( readme ) }
  
    return true
end