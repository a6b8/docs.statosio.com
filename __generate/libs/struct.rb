def struct_create( obj )
    def obj_prepare_path( obj, salt, status )
        def helper_parse_path( str )
            if str[ str.length - 1, 1 ] != '/'
                str = str + '/'
            end
            return str
        end


        def draw_obj_line_edge( l, offset )
            str = ''
            for i in 1..( ( l - 1 ) * offset )
                str += ' '
            end
            if l > 1
                str += "┗"
                str += "━"
                str += " "
            else
                str += '    '
            end
            return str
        end


        def draw_obj_path_local( str, l, offset )
            result = ''
            for i in 0..( ( l - 1 ) * offset )
                result += ' '
            end
            result += ''
            result += str
            return result
        end


        def helper_obj_path( name, salt, k, f=nil )
            str = ''
            str += draw_obj_line_edge( name[ 1, name.length ].to_i, 4 )
            str += 'hash[:path]'
            if k.length == 0
            else
                for i in 0..k.length-1
                    str += '[:children]'
                    str += '[:'
                    str += k[ i ].to_s
                    str += ']'      
                end
            end
        
            if !f.nil?
                str += '[:files][:'
                str += f.to_s
                str += '][:full]'    
            else
                str += '[:full]'
            end
            return str
        end


        def helper_insert_salt( salt, str )
            if salt[ 0, 1 ] == ''
            
            else
                if salt[ 0, 1 ] == '-'
                else
                    salt = '-' + salt      
                end
            end
      
          str = str.gsub( "{{SALT}}", salt )
          return str
        end


        def helper_parse_path( str )
            if str[ str.length - 1, 1 ] != '/'
                str = str + '/'
            end
            return str
        end


        def draw_obj_line_edge( l, offset )
            str = ''
            for i in 1..( ( l - 1 ) * offset )
                str += ' '
            end
            if l > 1
                str += "┗"
                str += "━"
                str += " "
            else
                str += '    '
            end
            return str
        end


        def draw_obj_path_local( str, l, offset )
            result = ''
            for i in 0..( ( l - 1 ) * offset )
                result += ' '
            end
            result = result[ 1, result.length ]
            
            if str.index('.') != nil
                result += 'File: '
            else
                result += 'Folder: '
            end
            result += str
            return result
        end


        def helper_obj_path( name, salt, k, f=nil )
            str = ''
            str += draw_obj_line_edge( name[ 1, name.length ].to_i, 4 )
            str += ''
            str += 'hash[:path]'
            if k.length == 0
            else
                for i in 0..k.length-1
                    str += '[:children]'
                    str += '[:'
                    str += k[ i ].to_s
                    str += ']'      
                end
            end
      
            if !f.nil?
                str += '[:files][:'
                str += f.to_s
                str += '][:full]'    
            else
                str += '[:full]'
            end
            return str
        end


        def helper_insert_salt( salt, str )
            if salt[ 0, 1 ] == ''
            
            else
                if salt[ 0, 1 ] == '-'
                else
                    salt = '-' + salt      
                end
            end
        
            str = str.gsub( "{{SALT}}", salt )
            return str
        end
      
        mode = {
            :general => nil,
            :hash => nil,
            :path => nil
        }
          
        case status
            when 0
                mode[:general] = false
                mode[:hash] = false
                mode[:path] = false
            when 1
                mode[:general] = true
                mode[:hash] = true
                mode[:path] = false
            when 2
                mode[:general] = true
                mode[:hash] = false
                mode[:path] = true
            when 3
                mode[:general] = true
                mode[:hash] = true
                mode[:path] = true
        end
        
        
        mode[:general] ? puts( 'TREE OVERVIEW' ) : ''
        
        obj[:full] = ''
        obj[:full] += obj[:root]
        obj[:full] += helper_parse_path( helper_insert_salt( salt, obj[:name] ) )
        
        mode[:hash] ? puts( helper_obj_path( 'l1', salt, [ ] ) ) : ''
        mode[:path] ? puts( draw_obj_path_local( obj[:full], 2, 4 ) ) : ''
      
        obj[:children].keys.each { | l2 | 
            obj[:children][ l2 ][:full] = ''
            obj[:children][ l2 ][:full] += obj[:full]
            obj[:children][ l2 ][:full] += helper_parse_path( helper_insert_salt( salt, obj[:children][ l2 ][:name] ) )
            mode[:hash] ? puts( helper_obj_path( 'l2', salt, [ l2 ] ) ) : ''
            mode[:path] ? puts( draw_obj_path_local( obj[:children][ l2 ][:full], 3, 4 ) ) : ''
            FileUtils.mkdir_p obj[:children][ l2 ][:full]
      
            if !obj[:children][ l2 ][:files].nil?
              obj[:children][ l2 ][:files].keys.each { | f1 | 
                obj[:children][ l2 ][:files][ f1 ][:full] = '' 
                obj[:children][ l2 ][:files][ f1 ][:full] += obj[:children][ l2 ][:full] 
                obj[:children][ l2 ][:files][ f1 ][:full] += helper_insert_salt( salt, obj[:children][ l2 ][:files][ f1 ][:name] )
                mode[:hash] ? puts( helper_obj_path( 'l2', salt, [ l2 ], f1 ) ) : ''
                mode[:path] ? puts( draw_obj_path_local( obj[:children][ l2 ][:files][ f1 ][:full], 3, 4 ) ) : ''
              }
            end
      
            if !obj[:children][ l2 ][:children].nil?
              obj[:children][ l2 ][:children].keys.each { | l3 | 
                obj[:children][ l2 ][:children][ l3 ][:full] = ''
                obj[:children][ l2 ][:children][ l3 ][:full] += obj[:children][ l2 ][:full]
                obj[:children][ l2 ][:children][ l3 ][:full] += helper_parse_path( helper_insert_salt( salt, obj[:children][ l2 ][:children][ l3 ][:name] ) )
      
                FileUtils.mkdir_p obj[:children][ l2 ][:children][ l3 ][:full]
                mode[:hash] ? puts( helper_obj_path( 'l3', salt, [ l2, l3 ] ) ) : ''
                mode[:path] ? puts( draw_obj_path_local( obj[:children][ l2 ][:children][ l3 ][:full], 4, 4 ) ) : ''
      
                if !obj[:children][ l2 ][:children][ l3 ][:files].nil?
                  obj[:children][ l2 ][:children][ l3 ][:files].keys.each { | f2 | 
                    obj[:children][ l2 ][:children][ l3 ][:files][ f2 ][:full] = ''
                    obj[:children][ l2 ][:children][ l3 ][:files][ f2 ][:full] += obj[:children][ l2 ][:children][ l3 ][:full]
                    obj[:children][ l2 ][:children][ l3 ][:files][ f2 ][:full] += helper_insert_salt( salt, obj[:children][ l2 ][:children][ l3 ][:files][ f2 ][:name] )
                    mode[:hash] ? puts( helper_obj_path( 'l3', salt, [ l2, l3 ], f2 ) ) : ''
                    mode[:path] ? puts( draw_obj_path_local( obj[:children][ l2 ][:children][ l3 ][:files][ f2 ][:full], 4, 4 ) ) : ''
                  }
                end
              }
            end
        }
        return obj
    end


    def prepare_files( defaults, suffixs )
        insert = {}
        defaults.each do | default |
            suffixs.each do | suffix |
                key = ''
                key << default[:flatten].to_s
                key << '_'
                key << suffix
                insert[ key.to_sym ] = {
                    name: default[:flatten].to_s.downcase + '.' + suffix,
                    full: nil
                }          
            end
        end
        return insert
    end


    def scrape_json( obj, file )
        str = ''
        str << file[ file.index( obj[:from] ) + obj[:from].length , file.length ]
        str = str[ 0, str.index( obj[:to] ) ]
        str = str.gsub!( "'", '"' )
        default = JSON.parse( str ).with_indifferent_access
        return default
    end


    def scrape_default_values( struct )
        def make_name( keys, _val )
            str = ''
            keys.each.with_index do | key, i |
                i != 0 ? str << '__' : ''
                str << key
            end
            
            result = {
                :flatten => nil,
                :value => nil,
                :class => nil
            }
            
            result[:flatten] = str.to_sym
            result[:value] = _val
            result[:class] = _val.class
            return result
        end
    
        tree = []
    
        if true
            struct.keys.each do | keys1 |
                if struct[ keys1 ].class == HashWithIndifferentAccess
                    struct[ keys1 ].keys.each do  | keys2 |
                        if struct[ keys1 ][ keys2 ].class == HashWithIndifferentAccess
                            struct[ keys1 ][ keys2 ].keys.each do  | keys3 |
                                if struct[ keys1 ][ keys2 ][ keys3 ].class == HashWithIndifferentAccess
                                    struct[ keys1 ][ keys2 ][ keys3 ].keys.each do  | keys4 |
                                        val = struct[ keys1 ][ keys2 ][ keys3 ][ keys4 ]
                                        !val.nil? ? tree.push( make_name( [ keys1, keys2, keys3, keys4 ], val ) ) : ''
                                    end
                                else
                                    val = struct[ keys1 ][ keys2 ][ keys3 ]
                                    !val.nil? ? tree.push( make_name( [ keys1, keys2, keys3 ], val ) ) : ''
                                end
                            end 
                        else
                            val = struct[ keys1 ][ keys2 ]
                            !val.nil? ? tree.push( make_name( [ keys1, keys2 ], val ) ) : ''
                        end
                    end 
                else
                    val = struct[ keys1 ]
                    !val.nil? ? tree.push( make_name( [ keys1 ], val ) ) : ''
                end
            end
        end
        return tree
    end


    struct = {}
    file = File.read( obj[:import][:path] )
    struct[:json] = scrape_json( obj[:import], file )
    struct[:defaults] = scrape_default_values( struct[:json] )

    obj[:path][:children][:options][:files] = prepare_files( struct[:defaults], [ 'md' ] )
    obj[:path][:children][:sources][:files] = prepare_files( struct[:defaults], [ 'html', 'zip' ] )

    obj[:path] = obj_prepare_path( obj[:path], '', 0 )

    struct[:files] = obj[:path][:children][:options][:files].keys.map { | key | 
        obj[:path][:children][:options][:files][ key ][:full]
    }

    struct[:files] += obj[:path][:children][:sources][:files].keys.map { | key | 
        obj[:path][:children][:sources][:files][ key ][:full]
    }
    struct[:files].sort!
    struct[:other] = {}
    struct[:other][:sources] = obj[:path][:children][:sources][:name]
    return struct
end