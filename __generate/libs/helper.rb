def helper_titleize( str )
    str = str.to_s.capitalize!
    words_no_cap = [ 'and', 'or', 'the', 'ofblocker', 'to', 'the', 'a', 'but' ]
    phrase = str.split(' ').map { | word | words_no_cap.include?( word ) ? word : word.capitalize }
    return phrase.join(' ')
end


def helper_flat_to_camel_case( array )
    array = array
        .to_s
        .split( '__' ).join( '---' )
        .split( '_' ).join( '---' )
        .split( '---' )

    str = ''
    array.each.with_index do | d, i |
        i == 0 ? str << array[ i ] : str << helper_titleize( array[ i ] )
    end
    return str
end