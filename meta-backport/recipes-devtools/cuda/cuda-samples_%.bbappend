# From meta-tegra master
# 3fd8495094cef06d65f62501d3b318e0f110884f

CC_FIRST = "${@cuda_extract_compiler('CC_FOR_CUDA', d)[0]}"
CC_REST = "${@cuda_extract_compiler('CC_FOR_CUDA', d, prefix='')[1]}"

