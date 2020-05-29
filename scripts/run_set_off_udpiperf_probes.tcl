# list values first
get_property OUTPUT_VALUE [get_hw_probes runUdpExperiment]
get_property OUTPUT_VALUE [get_hw_probes pkgWordCountUdp]

# set
set_property OUTPUT_VALUE 00 [get_hw_probes pkgWordCountUdp]
commit_hw_vio [get_hw_probes pkgWordCountUdp]
get_property OUTPUT_VALUE [get_hw_probes pkgWordCountUdp]

# set
set_property OUTPUT_VALUE 0 [get_hw_probes runUdpExperiment]
commit_hw_vio [get_hw_probes runUdpExperiment]
get_property OUTPUT_VALUE [get_hw_probes runUdpExperiment]
