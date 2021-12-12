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