def benchmark_readme( sort )
    strs = ''
    strs << "---\n"
    strs << 'sort: '
    strs << sort.to_s + "\n"
    strs << "---\n"
    strs << "\n"
    strs << "# Benchmark\n\n"
    strs << "Speedtest\n"
    strs << "{% include list.liquid %}"
    return strs
end