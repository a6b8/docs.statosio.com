def readme_prepare( sort, readmes, blocks )
    result = {
      file: nil,
      categories: {}
    }
    result[:file] = readmes[ 0 ][:params][:file][:md]
        .gsub(
            readmes[ 0 ][:params][:default][:rows][ 0 ][ 0 ][:flatten].to_s + '.md',
            'README.md'
        )

    items = []
    alphabet = ( 'A'..'Z' ).to_a
    readmes.each.with_index do | readme, index |
        item = {
            numbering: nil,
            option: nil,
            flatten: nil,
            value: nil,
            category: nil,
            description: nil,
            examples: nil,
        }
        item[:numbering] = readme[:params][:numbering]
        item[:value] = readme[:params][:default][:rows][ 0 ][ 0 ][:value]
        item[:option] = readme[:params][:default][:rows][ 0 ][ 0 ][:camel_case]
        item[:category] = readme[:params][:default][:rows][ 0 ][ 0 ][:flatten].to_s.split( '__' )[ 0 ]
        item[:flatten] = readme[:params][:default][:rows][ 0 ][ 0 ][:flatten].to_s
        item[:description] = readme[:params][:description]
        item[:examples] = readmes[ index ][:page][:html].length.times.map do | d | 
            link = {
                name: alphabet[ d ],
                file: '../options/' + item[:flatten] + '.html#example-' + alphabet[ d ].downcase
            }
        end

        items.push( item )
    end

    keys = blocks[:categories].keys.map { | d | d.to_sym }
    keys.each do | category |
        !result[:categories].key?( category ) ? result[:categories][ category ] = [] : ''
        result[:categories][ category ] = items.select { | item | item[:category] == category.to_s }
    end
    return result
end


def readme_create( sort, readmes, blocks )
    struct = readme_prepare( sort, readmes, blocks )
    str = ''
    str << "---\n"
    str << 'sort: '
    str << sort.to_s
    str << "\n"
    str << "title: Options\n"
    str << "---\n"
    str << "\n"
    str << "# Options\n"
    str << "## Categories\n"
  
    alphabet = ( 'A'..'Z' ).to_a
    struct[:categories].keys.each.with_index do | category, index |
        str << '### '
        str << alphabet[ index ] + '. '
        str << helper_titleize( category.to_s )
        str << ' {#' + category.to_s  + '}' + "\n"
        str << blocks[:categories][ category ][:description]
        str << "\n\n"
        str << "|   | **Option** | **Default** | **Examples** | **Description** |\n"
        str << "|:--|:--|:--|:--|:--|\n"
        struct[:categories][ category ].each do | row |
            str << '| '
            str << row[:numbering]
            str << ' | '
            str << '['
            str << row[:option]
            str << ']('
            str << '../options/' + row[:flatten]
            str << '.md'
            str << ')'
            str << ' | '
            str << row[:value].to_s
            str << ' | '

            row[:examples].each.with_index do | example, i |
                str << '['
                str << example[:name]
                str << ']('
                str << example[:file]
                str << ')'
                if row[:examples].length - 1 != i
                    str << ', '
                else
                end
            end

            str << ' | '
            str << row[:description]
            str << ' |'
            str << "\n"
        end
        str << "\n"
    end
  
    File.open( struct[:file], "w" ) { | f | f.write( str ) }
    return true
end