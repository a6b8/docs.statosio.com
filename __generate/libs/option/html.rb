def html_create( page, id, params )
    alphabet = ( 'a'..'z' ).to_a
    page[:html].each.with_index do | html, i |
        char = alphabet[ i ]
        name = ''
        name << helper_flat_to_camel_case( id.to_s )
        name << '--'
        name << 'example-'
        name << alphabet[ i ]

        file = params[:file][:html]
        file = file
            .gsub( id.to_s, name )
            .gsub( '_', '-' )

        File.open( file, "w" ) { | f | f.write( html ) }
    end  
    return true
end