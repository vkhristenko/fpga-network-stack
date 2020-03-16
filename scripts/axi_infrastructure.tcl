#AXI Infrastructure

# clock converters

create_ip -name axis_clock_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_clock_converter_32 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {4} CONFIG.Component_Name {axis_clock_converter_32}] [get_ips axis_clock_converter_32]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_clock_converter_32/axis_clock_converter_32.xci]
update_compile_order -fileset sources_1

create_ip -name axis_clock_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_clock_converter_64 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.Component_Name {axis_clock_converter_64}] [get_ips axis_clock_converter_64]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_clock_converter_64/axis_clock_converter_64.xci]
update_compile_order -fileset sources_1

create_ip -name axis_clock_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_clock_converter_96 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {12} CONFIG.Component_Name {axis_clock_converter_96}] [get_ips axis_clock_converter_96]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_clock_converter_96/axis_clock_converter_96.xci]
update_compile_order -fileset sources_1

create_ip -name axis_clock_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_clock_converter_136 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {17} CONFIG.Component_Name {axis_clock_converter_136}] [get_ips axis_clock_converter_136]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_clock_converter_136/axis_clock_converter_136.xci]
update_compile_order -fileset sources_1

create_ip -name axis_clock_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_clock_converter_144 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {18} CONFIG.Component_Name {axis_clock_converter_144}] [get_ips axis_clock_converter_144]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_clock_converter_144/axis_clock_converter_144.xci]
update_compile_order -fileset sources_1

create_ip -name axis_clock_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_clock_converter_200 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {25} CONFIG.Component_Name {axis_clock_converter_200}] [get_ips axis_clock_converter_200]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_clock_converter_200/axis_clock_converter_200.xci]
update_compile_order -fileset sources_1

create_ip -name axi_clock_converter -vendor xilinx.com -library ip -version 2.1 -module_name axil_clock_converter -dir $device_ip_dir
set_property -dict [list CONFIG.Component_Name {axil_clock_converter} CONFIG.PROTOCOL {AXI4LITE} CONFIG.DATA_WIDTH {32} CONFIG.ID_WIDTH {0} CONFIG.AWUSER_WIDTH {0} CONFIG.ARUSER_WIDTH {0} CONFIG.RUSER_WIDTH {0} CONFIG.WUSER_WIDTH {0} CONFIG.BUSER_WIDTH {0}] [get_ips axil_clock_converter]
generate_target {instantiation_template} [get_files $device_ip_dir/axil_clock_converter/axil_clock_converter.xci]
update_compile_order -fileset sources_1

#FIFOs

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version * -module_name axis_data_fifo_64_cc -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.IS_ACLK_ASYNC {1} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.SYNCHRONIZATION_STAGES {3} CONFIG.Component_Name {axis_data_fifo_64_cc}] [get_ips axis_data_fifo_64_cc]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_data_fifo_64_cc/axis_data_fifo_64_cc.xci]
update_compile_order -fileset sources_1

create_ip -name fifo_generator -vendor xilinx.com -library ip -version 13.2 -module_name axis_sync_fifo -dir $device_ip_dir
set_property -dict [list CONFIG.INTERFACE_TYPE {AXI_STREAM} CONFIG.FIFO_Implementation_axis {Common_Clock_Block_RAM} CONFIG.TDATA_NUM_BYTES {8} CONFIG.TUSER_WIDTH {0} CONFIG.Enable_TLAST {true} CONFIG.HAS_TKEEP {true} CONFIG.Enable_Data_Counts_axis {true} CONFIG.Reset_Type {Asynchronous_Reset} CONFIG.Full_Flags_Reset_Value {1} CONFIG.TSTRB_WIDTH {8} CONFIG.TKEEP_WIDTH {8} CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} CONFIG.Full_Threshold_Assert_Value_wach {15} CONFIG.Empty_Threshold_Assert_Value_wach {14} CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} CONFIG.Full_Threshold_Assert_Value_wrch {15} CONFIG.Empty_Threshold_Assert_Value_wrch {14} CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} CONFIG.Full_Threshold_Assert_Value_rach {15} CONFIG.Empty_Threshold_Assert_Value_rach {14}] [get_ips axis_sync_fifo]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_sync_fifo/axis_sync_fifo.xci]
update_compile_order -fileset sources_1

create_ip -name fifo_generator -vendor xilinx.com -library ip -version 13.2 -module_name cmd_fifo_xgemac_rxif -dir $device_ip_dir
set_property -dict [list CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} CONFIG.Input_Data_Width {16} CONFIG.Output_Data_Width {16} CONFIG.Reset_Type {Asynchronous_Reset} CONFIG.Full_Flags_Reset_Value {1} CONFIG.Use_Embedded_Registers {false} CONFIG.Full_Threshold_Assert_Value {1022} CONFIG.Full_Threshold_Negate_Value {1021} CONFIG.Enable_Safety_Circuit {false}] [get_ips cmd_fifo_xgemac_rxif]
generate_target {instantiation_template} [get_files $device_ip_dir/cmd_fifo_xgemac_rxif/cmd_fifo_xgemac_rxif.xci]
update_compile_order -fileset sources_1

create_ip -name fifo_generator -vendor xilinx.com -library ip -version 13.2 -module_name cmd_fifo_xgemac_txif -dir $device_ip_dir
set_property -dict [list CONFIG.Fifo_Implementation {Common_Clock_Block_RAM} CONFIG.Input_Data_Width {1} CONFIG.Output_Data_Width {1} CONFIG.Reset_Type {Asynchronous_Reset} CONFIG.Full_Flags_Reset_Value {1} CONFIG.Full_Threshold_Assert_Value {1022} CONFIG.Full_Threshold_Negate_Value {1021} CONFIG.Enable_Safety_Circuit {false}] [get_ips cmd_fifo_xgemac_txif]
generate_target {instantiation_template} [get_files $device_ip_dir/cmd_fifo_xgemac_txif/cmd_fifo_xgemac_txif.xci]
update_compile_order -fileset sources_1

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_96 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {12} CONFIG.Component_Name {axis_data_fifo_96}] [get_ips axis_data_fifo_96]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_data_fifo_96/axis_data_fifo_96.xci]
update_compile_order -fileset sources_1

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_160 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {20} CONFIG.Component_Name {axis_data_fifo_160} CONFIG.HAS_WR_DATA_COUNT {1} CONFIG.HAS_RD_DATA_COUNT {1}] [get_ips axis_data_fifo_160]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_data_fifo_160/axis_data_fifo_160.xci]
update_compile_order -fileset sources_1

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_160_cc -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {20} CONFIG.IS_ACLK_ASYNC {1} CONFIG.Component_Name {axis_data_fifo_160_cc} CONFIG.HAS_WR_DATA_COUNT {1} CONFIG.HAS_RD_DATA_COUNT {1}] [get_ips axis_data_fifo_160_cc] 
generate_target {instantiation_template} [get_files $device_ip_dir/axis_data_fifo_160_cc/axis_data_fifo_160_cc.xci]
update_compile_order -fileset sources_1

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_512_cc -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.IS_ACLK_ASYNC {1} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_data_fifo_512_cc}] [get_ips axis_data_fifo_512_cc]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_data_fifo_512_cc/axis_data_fifo_512_cc.xci]
update_compile_order -fileset sources_1

#Register slices

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_64 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1}] [get_ips axis_register_slice_64]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_64/axis_register_slice_64.xci]
update_compile_order -fileset sources_1

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_8 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1} CONFIG.Component_Name {axis_register_slice_8}] [get_ips axis_register_slice_8]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_8/axis_register_slice_8.xci]
update_compile_order -fileset sources_1

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_16 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {2} CONFIG.Component_Name {axis_register_slice_16}] [get_ips axis_register_slice_16]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_16/axis_register_slice_16.xci]
update_compile_order -fileset sources_1

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_24 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {3} CONFIG.Component_Name {axis_register_slice_24}] [get_ips axis_register_slice_24]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_24/axis_register_slice_24.xci]
update_compile_order -fileset sources_1

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_32 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {4} CONFIG.Component_Name {axis_register_slice_32}] [get_ips axis_register_slice_32]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_32/axis_register_slice_32.xci]
update_compile_order -fileset sources_1

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_48 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {6} CONFIG.Component_Name {axis_register_slice_48}] [get_ips axis_register_slice_48]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_48/axis_register_slice_48.xci]
update_compile_order -fileset sources_1

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_88 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {11} CONFIG.Component_Name {axis_register_slice_88}] [get_ips axis_register_slice_88]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_88/axis_register_slice_88.xci]
update_compile_order -fileset sources_1

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_96 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {12} CONFIG.Component_Name {axis_register_slice_96}] [get_ips axis_register_slice_96]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_96/axis_register_slice_96.xci]
update_compile_order -fileset sources_1

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_176 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {22} CONFIG.Component_Name {axis_register_slice_176}] [get_ips axis_register_slice_176]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_176/axis_register_slice_176.xci]
update_compile_order -fileset sources_1

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_128 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {16} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_register_slice_128}] [get_ips axis_register_slice_128]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_128/axis_register_slice_128.xci]
update_compile_order -fileset sources_1

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_256 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {32} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_register_slice_256}] [get_ips axis_register_slice_256]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_256/axis_register_slice_256.xci]
update_compile_order -fileset sources_1

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_512 -dir $device_ip_dir
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_register_slice_512}] [get_ips axis_register_slice_512]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_register_slice_512/axis_register_slice_512.xci]
update_compile_order -fileset sources_1

#Interconnects

create_ip -name axis_interconnect -vendor xilinx.com -library ip -version 1.1 -module_name axis_interconnect_3to1 -dir $device_ip_dir
set_property -dict [list CONFIG.C_NUM_SI_SLOTS {3} CONFIG.SWITCH_TDATA_NUM_BYTES {8} CONFIG.HAS_TSTRB {false} CONFIG.HAS_TID {false} CONFIG.HAS_TDEST {false} CONFIG.SWITCH_PACKET_MODE {true} CONFIG.C_S00_AXIS_REG_CONFIG {1} CONFIG.C_S01_AXIS_REG_CONFIG {1} CONFIG.C_S02_AXIS_REG_CONFIG {1} CONFIG.C_SWITCH_MAX_XFERS_PER_ARB {0} CONFIG.C_SWITCH_NUM_CYCLES_TIMEOUT {0} CONFIG.M00_AXIS_TDATA_NUM_BYTES {8} CONFIG.S00_AXIS_TDATA_NUM_BYTES {8} CONFIG.S01_AXIS_TDATA_NUM_BYTES {8} CONFIG.S02_AXIS_TDATA_NUM_BYTES {8} CONFIG.M00_S01_CONNECTIVITY {true} CONFIG.M00_S02_CONNECTIVITY {true}] [get_ips axis_interconnect_3to1]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_interconnect_3to1/axis_interconnect_3to1.xci]
update_compile_order -fileset sources_1

create_ip -name axis_interconnect -vendor xilinx.com -library ip -version 1.1 -module_name axis_interconnect_2to1 -dir $device_ip_dir
set_property -dict [list CONFIG.C_NUM_SI_SLOTS {2} CONFIG.SWITCH_TDATA_NUM_BYTES {8} CONFIG.HAS_TSTRB {false} CONFIG.HAS_TID {false} CONFIG.HAS_TDEST {false} CONFIG.SWITCH_PACKET_MODE {true} CONFIG.C_SWITCH_MAX_XFERS_PER_ARB {0} CONFIG.C_M00_AXIS_REG_CONFIG {1} CONFIG.C_S00_AXIS_REG_CONFIG {1} CONFIG.C_S01_AXIS_REG_CONFIG {1} CONFIG.C_SWITCH_NUM_CYCLES_TIMEOUT {0} CONFIG.M00_AXIS_TDATA_NUM_BYTES {8} CONFIG.S00_AXIS_TDATA_NUM_BYTES {8} CONFIG.S01_AXIS_TDATA_NUM_BYTES {8} CONFIG.M00_S01_CONNECTIVITY {true}] [get_ips axis_interconnect_2to1]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_interconnect_2to1/axis_interconnect_2to1.xci]
update_compile_order -fileset sources_1

create_ip -name axis_interconnect -vendor xilinx.com -library ip -version 1.1 -module_name axis_interconnect_96_1to2 -dir $device_ip_dir
set_property -dict [list CONFIG.Component_Name {axis_interconnect_96_1to2} CONFIG.C_NUM_MI_SLOTS {2} CONFIG.SWITCH_TDATA_NUM_BYTES {12} CONFIG.HAS_TSTRB {false} CONFIG.HAS_TKEEP {false} CONFIG.HAS_TLAST {false} CONFIG.HAS_TID {false} CONFIG.C_M00_AXIS_REG_CONFIG {1} CONFIG.C_S00_AXIS_REG_CONFIG {1} CONFIG.C_M01_AXIS_REG_CONFIG {1} CONFIG.HAS_TDEST {true} CONFIG.C_SWITCH_TDEST_WIDTH {1} CONFIG.SWITCH_PACKET_MODE {false} CONFIG.C_SWITCH_MAX_XFERS_PER_ARB {1} CONFIG.C_SWITCH_NUM_CYCLES_TIMEOUT {0} CONFIG.M00_AXIS_TDATA_NUM_BYTES {12} CONFIG.S00_AXIS_TDATA_NUM_BYTES {12} CONFIG.M01_AXIS_TDATA_NUM_BYTES {12} CONFIG.C_M00_AXIS_BASETDEST {0x00000000} CONFIG.C_M00_AXIS_HIGHTDEST {0x00000000} CONFIG.C_M01_AXIS_BASETDEST {0x00000001} CONFIG.C_M01_AXIS_HIGHTDEST {0x00000001} CONFIG.M01_S00_CONNECTIVITY {true}] [get_ips axis_interconnect_96_1to2]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_interconnect_96_1to2/axis_interconnect_96_1to2.xci]
update_compile_order -fileset sources_1

create_ip -name axis_interconnect -vendor xilinx.com -library ip -version 1.1 -module_name axis_interconnect_160_2to1 -dir $device_ip_dir
set_property -dict [list CONFIG.Component_Name {axis_interconnect_160_2to1} CONFIG.C_NUM_SI_SLOTS {2} CONFIG.SWITCH_TDATA_NUM_BYTES {20} CONFIG.HAS_TSTRB {false} CONFIG.HAS_TKEEP {false} CONFIG.HAS_TLAST {false} CONFIG.HAS_TID {false} CONFIG.HAS_TDEST {false} CONFIG.C_SWITCH_MAX_XFERS_PER_ARB {1} CONFIG.C_SWITCH_NUM_CYCLES_TIMEOUT {0} CONFIG.M00_AXIS_TDATA_NUM_BYTES {20} CONFIG.S00_AXIS_TDATA_NUM_BYTES {20} CONFIG.S01_AXIS_TDATA_NUM_BYTES {20} CONFIG.M00_S01_CONNECTIVITY {true}] [get_ips axis_interconnect_160_2to1]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_interconnect_160_2to1/axis_interconnect_160_2to1.xci]
update_compile_order -fileset sources_1

create_ip -name axis_interconnect -vendor xilinx.com -library ip -version 1.1 -module_name axis_interconnect_64_1to2 -dir $device_ip_dir
set_property -dict [list CONFIG.Component_Name {axis_interconnect_64_1to2} CONFIG.C_NUM_MI_SLOTS {2} CONFIG.SWITCH_TDATA_NUM_BYTES {8} CONFIG.HAS_TSTRB {false} CONFIG.HAS_TID {false} CONFIG.C_M00_AXIS_REG_CONFIG {1} CONFIG.C_S00_AXIS_REG_CONFIG {1} CONFIG.C_M01_AXIS_REG_CONFIG {1} CONFIG.HAS_TDEST {true} CONFIG.C_SWITCH_TDEST_WIDTH {1} CONFIG.C_SWITCH_NUM_CYCLES_TIMEOUT {0} CONFIG.M00_AXIS_TDATA_NUM_BYTES {8} CONFIG.S00_AXIS_TDATA_NUM_BYTES {8} CONFIG.M01_AXIS_TDATA_NUM_BYTES {8} CONFIG.C_M00_AXIS_BASETDEST {0x00000000} CONFIG.C_M00_AXIS_HIGHTDEST {0x00000000} CONFIG.C_M01_AXIS_BASETDEST {0x00000001} CONFIG.C_M01_AXIS_HIGHTDEST {0x00000001} CONFIG.M01_S00_CONNECTIVITY {true}] [get_ips axis_interconnect_64_1to2]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_interconnect_64_1to2/axis_interconnect_64_1to2.xci]
update_compile_order -fileset sources_1

create_ip -name axis_interconnect -vendor xilinx.com -library ip -version 1.1 -module_name axis_interconnect_512_1to2 -dir $device_ip_dir
set_property -dict [list CONFIG.Component_Name {axis_interconnect_512_1to2} CONFIG.C_NUM_MI_SLOTS {2} CONFIG.SWITCH_TDATA_NUM_BYTES {64} CONFIG.HAS_TSTRB {false} CONFIG.HAS_TID {false} CONFIG.C_M00_AXIS_REG_CONFIG {1} CONFIG.C_S00_AXIS_REG_CONFIG {1} CONFIG.C_M01_AXIS_REG_CONFIG {1} CONFIG.HAS_TDEST {true} CONFIG.C_SWITCH_TDEST_WIDTH {1} CONFIG.C_SWITCH_NUM_CYCLES_TIMEOUT {0} CONFIG.M00_AXIS_TDATA_NUM_BYTES {64} CONFIG.S00_AXIS_TDATA_NUM_BYTES {64} CONFIG.M01_AXIS_TDATA_NUM_BYTES {64} CONFIG.C_M00_AXIS_BASETDEST {0x00000000} CONFIG.C_M00_AXIS_HIGHTDEST {0x00000000} CONFIG.C_M01_AXIS_BASETDEST {0x00000001} CONFIG.C_M01_AXIS_HIGHTDEST {0x00000001} CONFIG.M01_S00_CONNECTIVITY {true}] [get_ips axis_interconnect_512_1to2]
generate_target {instantiation_template} [get_files $device_ip_dir/axis_interconnect_512_1to2/axis_interconnect_512_1to2.xci]
update_compile_order -fileset sources_1
