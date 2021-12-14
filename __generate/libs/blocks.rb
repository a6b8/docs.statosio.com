def blocks_create( path )
    file = File.read( path )
    blocks = JSON.parse( file ).with_indifferent_access
  
    k = Set.new
    blocks[:descriptions].keys.each do | key1 |
        k.add( blocks[:descriptions][ key1 ][:type] )
        for i in 0..blocks[:descriptions][ key1 ][:examples].length - 1
            _self = ''
            _self << "```"
            _self << blocks[:descriptions][ key1 ][:examples][ i ][:self].to_s
            _self << "```"
            blocks[:descriptions][ key1 ][:examples][ i ][:description]
                .gsub!( '---self---', _self )
        end
    end

    nr = {}
    alphabet = ( 'A'..'Z' ).to_a
    blocks[:descriptions].keys.each do | key |
        k = key.to_s.split( '__' )[ 0 ].to_sym
        nr.key?( k ) ? nr[ k ] = nr[ k ] + 1 : nr[ k ] = 1
        numbering = ''
        numbering << alphabet[ nr.keys.index( k ) ] 
        numbering << '.'
        numbering << nr[ k ].to_s
        numbering << '.'
        blocks[:descriptions][ key][:numbering] = numbering
    end

    return blocks
end