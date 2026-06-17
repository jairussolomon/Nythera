setMultiCpuUsage -localCpu 16
#set_multi_cpu_usage -localCpu 8
if { [catch {set testDir [file normalize $env(testDir)]} retVar] != 0 } {
  set testDir [file normalize .]
}
set env(testDir) $testDir
set dataDir ${testDir}/design
#set libDir ${testDir}/../../libs
set libDir $testDir/libs
set encVersion [getVersion]

#suppress messages irrelevent to this RAK to make reading of log clean
suppress_message IMPLF-201
suppress_message IMPLF-200
suppress_message TECHLIB-436
suppress_message TECHLIB-715
suppress_message TECHLIB-302
suppress_message IMPVL-159
suppress_message IMPVL-384
suppress_message IMPTS-124
suppress_message IMPEXT-2760
# Add your testcase commands after loading design
#source ${dataDir}/asic_entity_new.enc
source ${dataDir}/asic_entity_routed.enc
update_timing -full
#cleanupSpecifyClockTree
#create_ccopt_clock_tree_spec
#routeDesign -globalDetail
#
#saveDesign -rc design/asic_entity_routed.enc
 
# exit
