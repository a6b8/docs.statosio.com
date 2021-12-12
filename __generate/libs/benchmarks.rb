def benchmarks_create( diagrams )
    require './__generate/libs/benchmark/detail'
    
    benchmark_create( diagrams, diagrams.length-1, 8 )
    a = [ 0, 1, 2, 4, 8, 16, 32, 64, 128, 256 ].reverse
    a.each.with_index { | d, i | diagrams.length >= d ? page = benchmark_create( diagrams, d, i ) : '' }
    
end