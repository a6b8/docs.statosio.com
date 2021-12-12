def option_merge_data( id, sort, state, blocks, sources, files, root )
    item = {
        id: nil,
        sort: nil,
        camel_case: nil,
        blocks: nil,
        examples: nil,
        dataset_key: nil,
        dataset: nil,
        default: nil,
        scripts: nil,
        file: nil,
    }
  
    item[:id] = id
    item[:sort] = sort
    item[:blocks] = blocks[:descriptions][ item[:id] ].clone
    item[:examples] = item[:blocks][:examples].clone
    item[:blocks].delete( :examples )

    item[:camel_case] = helper_flat_to_camel_case( id ).to_sym
    item[:examples].each.with_index do | example, index |
        example.keys.each do | key |
            if key == :self
                item[:examples][ index ][ item[:id] ] = item[:examples][ index ].delete( :self )
            end
        end
    end
  
    item[:dataset_key] = blocks[:descriptions][ item[:id] ][:dataset]
    item[:dataset] = blocks[:datasets][ item[:dataset_key] ]
    item[:default] = sources.filter { | d | d[:flatten] == item[:id] }[ 0 ]
    item[:default][:camel_case] = helper_flat_to_camel_case( item[:default][:flatten] )
    validation = blocks[:descriptions][ item[:default][:flatten] ][:validation].to_s.split( '__' )
    item[:default][:single] = validation[ 0 ].eql?( 'single' )
    tmp =  blocks[:validations][ validation[ 1 ].to_sym ][ validation[ 2 ].to_sym ]
    item[:default][:regex] = tmp[:regex]
    item[:default][:description] = tmp[:description]
  
    item[:scripts] = blocks[:scripts][ state ]
  
    item[:file] = {}
  
    [ :md, :html, :zip ].each do | suffix |
        search = ''
        search << id.to_s
        search << '.'
        search << suffix.to_s
        item[:file][ suffix ] = files.find { | d | d.include?( search ) }
    end

    item[:file][:root] = root
  
    return item
end


def options_create( struct, blocks, script, root )
    require './__generate/libs/option/detail'
    require './__generate/libs/option/html'
    require './__generate/libs/option/zip'
    require './__generate/libs/option/readme'

    readmes = []
    diagramms = []
    for i in 0..struct[:defaults].length - 1
        id = struct[:defaults][ i ][:flatten]
        sort = ( i + 1 )
        item = option_merge_data( id, sort, script, blocks, struct[:defaults], struct[:files], root )
        detail = detail_create( item )

        readmes.push( detail )
        diagramms = diagramms.concat( detail[:page][:html] )

        html_create( detail[:page], id, detail[:params] )

        state = :live
        sources = 'sources'
        zip_create( blocks, id, item[:dataset_key], state, item[:file][:root], sources )
    end

    readme_create( 2, readmes, blocks )
    return diagramms
end