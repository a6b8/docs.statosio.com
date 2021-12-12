def markdown_code_table_generate( datas, user )
    def type_header( keys )
        str = ''
        keys.each.with_index do | key, i | 
            name = helper_titleize( key[ 1 ].to_s.gsub( '_', ' ' ) )
            str << "| **"
            str << name
            str << "**"
        end
        str << " |\n"
        return str
    end
  
    def type_value( keys, data )
        str =  ''
        keys.each.with_index do | key, i |
            str << "| "
            case key[ 2 ]
                when :code
                    str << '```'
                    str << data[ key[ 0 ] ].to_s
                    str << '```'
                when :hyperlink
                    str << '['
                    str << data[ key[ 0 ] ].to_s
                    str << '](../options/#'
                    str << data[ key[ 0 ] ].to_s.downcase
                    str << ')'
                when :text
                    str << data[ key[ 0 ] ].to_s
            end
        end
        str << " |\n"
        return str 
    end
  
  
    struct = {
        selections: {
            key: [ :camel_case, :flatten, :category ],
            value: [ :value, :type, :regex ],          
        },
        swap: {
            list: [ 
                [ :flatten, :alias, :code ], 
                [ :camel_case, :name, :code ],
                [ :regex, :validation, :code ],
                [ :value, :default, :code ],
                [ :category, :category, :hyperlink ]
            ],
            selection: nil
        }
    }
  
    search = :flatten
    struct[:swap][:list].find { | d | d[ 0 ] == search }
  
    struct[:list] = datas[ 0 ].keys.map do | search |
        r = struct[:swap][:list].find { | d | d[ 0 ] == search }
        r = !r.nil? ? [ search, r[ 1 ], r[ 2 ] ] : [ search, search, :text ]
    end

    selection = struct[:list].filter { | d | struct[:selections][ user ].include?( d[ 0 ] ) }
    #selection = selection.filter { | d | !( d[ 0 ] == :description ) }
  
    str = ''
    str << type_header( selection )
    str << type_value( selection, datas[ 0 ] )

    return str
end


def markdown_code_field_generate( code, link )
    template = <<-HEREDOC
<!DOCTYPE html>
<head>
    <title>#{code[:browser_title]}</title>
    <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
    <meta content="utf-8" http-equiv="encoding">
    <script src="#{code[:scripts][:d3]}"></script>
    <script src="#{code[:scripts][:self]}"></script>
</head>
<body>
    <script>
        d3.json( "#{ code[:dataset][:source] }" )
            .then( ( file ) => {
                d3.statosio( 
                    file, 
                    #{code[:dataset][:x]}, 
                    #{code[:dataset][:y]}, 
                    #{code[:dataset][:options]}
                )
                h = document.createElement("a")
                h.setAttribute("href", "#{link}")
                h.innerText = "BACK"
                document.body.append(h)
            } )
    </script>
    <div style="display:none;">#{code[:descriptions][:example]}</div>
</body>
HEREDOC
    return template
end


def markdown_text_generate( modus, example )
    str = ''
    case modus
      when 'headline1'
          str << '# '
          str << example
      when 'headline2'
          str << '## '
          str << example
      when 'headline3'
          str << '### '
          str << example
      when 'bold'
          str << '**'
          str << example
          str << '**'
      when 'text'
          str << example
      when 'note'
          str << "```note"
          str << "\n"
          str << example
          str << "\n"
          str << "```"
      when 'javascript'
          str << "```javascript"
          str << "\n"
          str << example
          #str << "\n"
          str << "```"        
      when 'unordered-list'
          str << "* "
          str << example
    end
    str << "\n"
    return str
end


def markdown_sort_generate( sort, headline, numbering )
    str = ''
    str << '---'
    str << "\n"
    str << "sort: "
    str << sort.to_s
    str << "\n"
    str << 'title: '
    str << numbering
    str << ' '
    str << headline
    str << "\n"  
    str << '---'
    return str
end


def markdown_script_single( code, insert )
    one = JSON.parse( code[:dataset][:options] )
    three = one.merge( insert )
    options = three
        .to_json
        .gsub( ':', ' : ' )
        .gsub( '{', '{ ' )
        .gsub( '}', ' }' )
        .gsub( ',', ', ' )
    
    str = ''
    str << <<-HEREDOC
d3.statosio( 
    file, 
    #{code[:dataset][:x]}, 
    #{code[:dataset][:y]}, 
    #{options}
)
    HEREDOC
    return str
end


def markdown_script_div( script, dom_id )
    str = ''
    str << <<-HEREDOC
  <div id="#{dom_id}">
      <script> 
          #{script}
      </script>
  </div>
    HEREDOC
    return str
end


def markdown_dataset_generate( code )
    def generate_row( key, value )
        type = ''
        case value[ 0, 1 ]
          when '.'
              type << 'String'
          when '"'
              type << 'String'
          when '['
              type << 'Array'
          when '{'
              type << 'Object'
        end

        row = ''
        row << '| **'
        row << helper_titleize( key.to_s ) 
        row << '** | '
        if key == :source
            row << '["' + value.to_s + '"](' + value.downcase + ')'
        else
            row << "```"
            row << value.to_s
            row << "```"
        end
        row << ' | '
        row << type
        
        row << ' |'
        row << "\n"
        return row
    end
    str = ''
    str << "| | **Value** | **Type** |\n"
    str << "|------:|:------|:------|\n"
  
    code.keys.each do | key |
        str << generate_row( key, code[ key ] )
    end
    return str
end


def markdown_generate( params )
    result = {
        markdown: '',
        html: []
    }
  
    ## Overview
    markdown = ''
    markdown << markdown_sort_generate( params[:sort], params[:headline], params[:numbering] )
    markdown << "\n"
    markdown << markdown_text_generate( 'headline1', params[:headline] )
    markdown << "\n"
    markdown << markdown_text_generate( 'text', params[:description] )
  
    if !params[:note].nil?
        markdown << "\n"
        markdown << markdown_text_generate( 'note', params[:note] )
    end
  
    markdown << "\n\n"

    markdown << markdown_text_generate( 'headline2', params[:default][:headline] )
    markdown << "\n"
    markdown << markdown_text_generate( 'text', params[:default][:rows][ 0 ][ 0 ][:json] )
    markdown << "\n" 
    markdown << markdown_text_generate( 'headline3', params[:default][:key] )
    markdown << "\n"
    markdown << markdown_code_table_generate( params[:default][:rows][ 0 ], :key )
    markdown << "\n"
    markdown << markdown_text_generate( 'headline3', params[:default][:value] )
    markdown << "\n"
    markdown << markdown_text_generate( 'text', params[:default][:rows][ 0 ][ 0 ][:description] )
    markdown << "\n"
    markdown << markdown_code_table_generate( params[:default][:rows][ 0 ], :value )
    markdown << "\n"
    #markdown << markdown_code_table_generate( params[:default][:rows][ 0 ] )
    markdown << "\n\n"

    ## Examples
    alphabet = ( 'A'..'Z' ).to_a #.map { | d | d = d + '.' }
    params[:examples][:rows].each.with_index do | row, i |
        prepare = {
            nr: nil,
            name: nil,
            dom_id: nil,
            href: nil,
            script: {
                dom: nil,
                clean: nil
            },
            file: {
                from: nil,
                to: nil,
                insert: nil
            }
        }
      
        prepare[:nr] = alphabet[ i ]
        prepare[:name] = 'Example ' + prepare[:nr] + '.'
        prepare[:dom_id] = prepare[:nr].gsub( ' ',  '_' ).downcase #.gsub( '.', '' )
        prepare[:href] = ''
        prepare[:href] << '../options/'
        prepare[:href] << params[:default][:rows][ 0 ][ 0 ][:flatten].to_s
        prepare[:href] << '.html#'
        prepare[:href] << 'example-'
        prepare[:href] << prepare[:nr].downcase
        prepare[:script][:dom] = markdown_script_single( params[:examples][:codes][ i ], { view__dom_id: prepare[:dom_id] } )
        prepare[:script][:clean] = markdown_script_single( params[:examples][:codes][ i ], {} )

        [ :blank_window, :as_zip ].each do | type |
            tmp = {}
            prepare[ type ] = {}
            tmp[:from] = params[:default][:rows][ 0 ][ 0 ][:flatten].to_s
            tmp[:to] = ''
            tmp[:to] << helper_flat_to_camel_case( tmp[:from] )
            if type == :blank_window
                tmp[:to] << '--'
                tmp[:to] << 'example'
                tmp[:to] << '-'
                tmp[:to] << prepare[:nr].to_s.downcase
            end
            prepare[ type ][:insert] = params[ type ]
                .gsub( tmp[:from], tmp[:to] )
        end
            
        markdown << markdown_text_generate( 'headline2', prepare[:name] )
        markdown << "\n"     
        markdown << markdown_text_generate( 'text', params[:examples][:codes][ i ][:descriptions][:example] )
        markdown << "\n" 
        markdown << markdown_text_generate( 'headline3', 'Output' )
        markdown << "\n" 
        markdown << markdown_script_div( prepare[:script][:dom], prepare[:dom_id] )
        markdown << "\n" 
        markdown << markdown_text_generate( 'text', prepare[ :blank_window ][:insert] )
        markdown << markdown_text_generate( 'text', prepare[ :as_zip ][:insert] )
        markdown << "\n" 
        markdown << markdown_text_generate( 'headline3', 'Parameters' )
        markdown << "\n" 
        markdown << markdown_text_generate( 'text', params[:examples][:codes][ i ][:descriptions][:dataset] )
        markdown << "\n" 
        markdown << markdown_dataset_generate( params[:examples][:codes][ i ][:dataset] )
        markdown << "\n\n"
        markdown << markdown_text_generate( 'headline3', 'Javascript' )
        markdown << "\n" 
        markdown << markdown_text_generate( 'unordered-list', 'Invoke Function' )
        markdown << "\n"
        markdown << markdown_text_generate( 'javascript', prepare[:script][:clean] )
        markdown << "\n"
        markdown << markdown_text_generate( 'unordered-list', 'HTML Implementation' )
        markdown << "\n"
        
        html = markdown_code_field_generate( params[:examples][:codes][ i ],  prepare[:href] )
        result[:html].push( html )
        html = "```html\n" + html + "```"
      
        markdown << html  
            .split( "\n" )
            .map { | d | !d.strip.start_with?( *[ 'h = ', 'h.', 'document.', '<div'] ) ? d : nil }
            .compact
            .join( "\n" )
        markdown << "\n"

        markdown << markdown_text_generate( 'headline3', 'Ruby' )
        markdown << "\n" 
        markdown << markdown_text_generate( 'unordered-list', 'Gem Install' )
        markdown << "\n"
        markdown << markdown_code_ruby_1()
        markdown << "\n"
        markdown << markdown_text_generate( 'unordered-list', 'Implementation' )
        markdown << "\n"
        markdown << markdown_code_ruby_2( params[:examples][:codes][ i ] )
    end
    result[:markdown] = markdown
  
    return result
end


def markdown_code_ruby_1()
    template = <<-EOS
```bash
gem install statosio
gem install prawn
gem install prawn-svg
```
EOS
    return template
end


def markdown_code_ruby_2( code )
    template = <<-EOS
```ruby
require "statosio"
require "prawn"
require "prawn-svg"

file = File.read( "#{ code[:dataset][:source] }" )
dataset = JSON.parse( file )

statosio = Statosio::Generate.new
chart = statosio.svg(
    dataset: dataset,
    x: #{code[:dataset][:x]}, 
    y: #{code[:dataset][:y]},
    options: #{JSON.parse( code[:dataset][:options] ).pretty_inspect }    
)

Prawn::Document.generate( "statosio.pdf" ) do | pdf |
  pdf.svg( chart, width: 500 )
end
```
EOS
    return template
end


def markdown_prepare( item )
    def table( camel_case, flatten, _class, value, name)
        rows = {
            camel_case: nil,
            flatten: nil,
            category: nil,
            value: nil,
            regex: nil,
            type: nil,
            value_type: nil,
        }

        rows[:camel_case] = camel_case
        rows[:flatten] = flatten
      
        c = rows[:flatten].to_s.split( '__' )[ 0 ]
        rows[:category] = helper_titleize( c )

        if [ 'TrueClass', 'FalseClass' ].include?( _class.to_s )  
            rows[:type] = 'Boolean'
        else
            rows[:type] = _class
        end
    
        rows[:value] = value
        rows[:value_type] = name
        return rows
    end
  
    def code( scripts, dataset, options, camel_case ) 
        code = {
            scripts: {
                d3: nil,
                self: nil,
            },
            dataset: {
                source: nil,
                x: nil,
                y: nil,
                options: nil,
            },
            descriptions: {
                dataset: '',
                example: ''
            },
            browser_title: nil
        }
      
        code[:scripts][:d3] = scripts[:d3]
        code[:scripts][:self] = scripts[:self]
        code[:dataset][:source] = dataset[:source]
        code[:dataset][:x] = '"' + dataset[:x] + '"'
        code[:dataset][:y] = dataset[:y]
            .to_s
            .gsub( '["', '[ "' ).gsub( '"]', '" ]' )
            .gsub( ',', ', ' )
        code[:descriptions][:example] = options[:description]
        options.delete( :description )
        code[:dataset][:options] = options
            .to_json
            .to_s.
            gsub( '{', '{ ' ).gsub( '}', ' }')
            .gsub( ':', ' : ')
            .gsub( ',', ', ' )
        code[:dataset][:options]
            .gsub!( 'self', camel_case )
        code[:descriptions][:dataset] = dataset[:description]
        code[:browser_title] = 'd3.statosio - ' + camel_case
        return code
    end
  
  
    params = {
        sort: nil,
        headline: nil,
        numbering: nil, 
        description: 'Description',
        note: 'note',
        default: {
            headline: 'Specification',
            key: 'Key',
            value: 'Value',
            rows: [],
        },
        examples: {
            rows: [],
            codes: []
        },
        file: nil,
        new_window: nil,
        as_zip: nil
    }
    
    params[:sort] = item[:sort]
    params[:headline] = item[:camel_case].to_s
    params[:numbering] = item[:blocks][:numbering]
    params[:description] = item[:blocks][:description]
    params[:note] = item[:blocks][:note]

    r = table( 
        item[:default][:camel_case], 
        item[:default][:flatten], 
        item[:default][:class], 
        item[:default][:value], 
        params[:default][:headline]
    ) 

    r[:regex] = item[:default][:regex]
    r[:description] = item[:default][:description]
   
    quote = ''
    if r[:type].to_s == 'String' 
        value = r[:value]
        r[:value] = ''
        r[:value] << '"'
        r[:value] << value.to_s
        r[:value] << '"'
    end

    r[:json] = ''
    r[:json] << "Default implementation: ```{ "
    r[:json] << item[:default][:camel_case].to_s
    r[:json] << ' : '
    r[:json] << item[:default][:value].to_s
    r[:json] << ' }```'

    params[:default][:rows].push( [ r ] )
   
    for i in 0..item[:examples].length - 1
        tmp = []
        for j in 0..item[:examples][ i ].keys.length-1
            r = table( 
                helper_flat_to_camel_case( item[:examples][ i ].keys[ j ] ), 
                item[:examples][ i ].keys[ j ], 
                item[:examples][ i ][ item[:examples][ i ].keys[ j ] ].class, 
                item[:examples][ i ][ item[:examples][ i ].keys[ j ] ], 
                'Value' 
            )
            tmp.push( r )
        end
        params[:examples][:rows].push( tmp )
      
        options = {}
        tmp.each { | d | options[ d[:camel_case].to_sym ] = d[:value]  }
        c = code( item[:scripts], item[:dataset], options, item[:default][:camel_case] ) 
        params[:examples][:codes].push( c )
    end

    params[:file] = item[:file]
        [ [ :html, :blank_window, 'Open output in a ', '_self' ], [ :zip, :as_zip, 'Download examples ', '_blank' ] ].each do | d |
            params[ d[ 1 ] ] = ''
            params[ d[ 1 ] ] << d[ 2 ]
            params[ d[ 1 ] ] << '['
            params[ d[ 1 ] ] << ''
            params[ d[ 1 ] ] << d[ 1 ].to_s.gsub( '_', ' ' )
            params[ d[ 1 ] ] << ']('
            params[ d[ 1 ] ] << '../' + params[:file][ d[ 0 ] ].split( '//' )[ 1 ]
            params[ d[ 1 ] ] << '){:target="'
            params[ d[ 1 ] ] << d[ 3 ]
            params[ d[ 1 ] ] << '"}'
            params[ d[ 1 ] ] << '. '
            # puts params[ d[ 1 ] ] 
        end
    return params
end


def detail_create( item )
    params = markdown_prepare( item )
    page = markdown_generate( params )
    File.open( params[:file][:md], "w" ) { | f | f.write( page[:markdown] ) }
    return { params: params, page: page }
end