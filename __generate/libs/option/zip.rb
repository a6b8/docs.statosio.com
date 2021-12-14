def zip_prepare( blocks, id, dataset, script, root, sources )
    item = {
        id: nil,
        root: nil,
        dataset: nil,
        script: nil,
        sources: {
            name: nil,
            full: nil
        },
        to: {
            folder: nil,
            full: nil,
        },
        from: {
            search: nil,
            files: nil
        },
        zip: {
            name: nil,
            full: nil
        }
    }

    item[:id] = id
    item[:dataset] = dataset
    item[:script] = script
    item[:root] = root
    item[:sources][:name] = sources
    item[:zip][:name] = helper_flat_to_camel_case( item[:id].to_s ) + '.zip'

    item[:sources][:full] = ''
    item[:sources][:full] << item[:root]
    item[:sources][:full] << ''
    item[:sources][:full] << item[:sources][:name]

    item[:to][:folder] = ''
    item[:to][:folder] << helper_flat_to_camel_case( item[:id]  )

    item[:to][:full] = ''
    item[:to][:full] << item[:sources][:full]
    item[:to][:full] << '/'
    item[:to][:full] << item[:to][:folder]

    item[:zip][:full] = ''
    item[:zip][:full] << item[:sources][:full]
    item[:zip][:full] << '/'
    item[:zip][:full] << item[:zip][:name]

    item[:from][:search] = ''
    item[:from][:search] << item[:sources][:full]
    item[:from][:search] << '/'
    item[:from][:search] << helper_flat_to_camel_case( item[:id]  )
    item[:from][:search] << '**'

    return item
end


def zip_create_folder( item, blocks )
    tmp = blocks[:scripts][ item[:script] ]
        .map { | key, value | value }
        .select { | value | value.start_with?( '..' ) }

    files = []

    file = {
      from: nil,
      to: nil
    }

    # file[:from] = blocks[:datasets][ item[:dataset] ][:source].gsub( '..', item[:root] )
    file[:from] = '../data/performance.json'.gsub( '..', item[:root] )

    # file[:to] = blocks[:datasets][ item[:dataset] ][:source].gsub( '..', item[:to][:full] )
    file[:to] = '../data/performance.json'.gsub( '..', item[:to][:full] )

    files.push( file )

    tmp = tmp.each do | value | 
        file = {
            from: nil,
            to: nil
        }
        file[:from] = value.gsub( '..', item[:root] )
        file[:to] = value.gsub( '..',  item[:to][:full] )
        files.push( file )
    end

    Dir[ item[:from][:search] ].each { | path |
        file = {
            from: nil,
            to: nil
        }
        file[:from] = path
        file[:to] = ''
        file[:to] << item[:to][:full] 
        file[:to] << '/'
        file[:to] << File.basename( path ) 
        files.push( file )
    }

    files.each do | file |
        FileUtils.mkdir_p( File.dirname( file[:to] ) )
        FileUtils.cp( file[:from], file[:to] )

        if file[:to].end_with?( '.html' )
            code = File.read( file[:to] )
            code = code
                .split( "\n" )
                .map { | d | !d.strip.start_with?( *[ 'h = ', 'h.', 'document.', '<div' ] ) ? d : nil }
                .compact
                .join( "\n" )

            File.open( file[:to], 'w' ) { | f | f.write( code ) }
        end
    end
    return true
end


def zip_create_file( item )
    def write_entries( entries, path, zipfile, input_dir )
        entries.each do | e |
            zipfile_path = path == '' ? e : File.join( path, e )
            disk_file_path = File.join( input_dir, zipfile_path )
            if File.directory? disk_file_path
                recursively_deflate_directory( disk_file_path, zipfile, zipfile_path, input_dir )
            else
                put_into_archive( disk_file_path, zipfile, zipfile_path )
            end
        end
    end


    def recursively_deflate_directory( disk_file_path, zipfile, zipfile_path, input_dir )
        zipfile.mkdir zipfile_path
        subdir = Dir.entries( disk_file_path ) - %w[. ..]
        write_entries( subdir, zipfile_path, zipfile, input_dir )
    end

    
    def put_into_archive( disk_file_path, zipfile, zipfile_path )
        zipfile.add( zipfile_path, disk_file_path )
    end

  
    entries = Dir.entries( item[:to][:full] ) - %w[. ..]
    ::Zip::File.open( item[:zip][:full], ::Zip::File::CREATE) do | zipfile |
        write_entries( entries, '', zipfile, item[:to][:full] )
    end
end


def zip_clean_up( item )
    FileUtils.rm_rf( item[:to][:full] )
end


def zip_create( blocks, id, dataset, script, root, sources )
    zip = zip_prepare( blocks, id, dataset, script, root, sources )
    zip_create_folder( zip, blocks )
    zip_create_file( zip ) 
    zip_clean_up( zip ) 
    return true
end