# list values first
get_property OUTPUT_VALUE [get_hw_probes runUdpExperiment]
get_property OUTPUT_VALUE [get_hw_probes pkgWordCountUdp]

# set
set_property OUTPUT_VALUE ff [get_hw_probes pkgWordCountUdp]
commit_hw_vio [get_hw_probes pkgWordCountUdp]
get_property OUTPUT_VALUE [get_hw_probes pkgWordCountUdp]

# set
set_property OUTPUT_VALUE 1 [get_hw_probes runUdpExperiment]
commit_hw_vio [get_hw_probes runUdpExperiment]
get_property OUTPUT_VALUE [get_hw_probes runUdpExperiment]
