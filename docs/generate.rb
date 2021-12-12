require 'json'
require "active_support/core_ext/hash"
require "active_support/core_ext/hash/indifferent_access"
require 'rubygems'
require 'zip'
require 'fileutils'
require 'pp'

require './__generate/libs/helper'
path = './__generate/struct/hash.json'
hash = JSON.parse( File.read( path ) ).with_indifferent_access

require './__generate/libs/struct'
struct = struct_create( hash )

require './__generate/libs/blocks'
path = './__generate/struct/blocks.json'
blocks = blocks_create( path )

files = Dir[ './sources/*.*' ]
files.each { | file | File.delete( file ) }

require './__generate/libs/options'
diagrams = options_create( struct, blocks, :live, hash[:path][:root] )

require './__generate/libs/benchmarks'
benchmarks_create( diagrams )