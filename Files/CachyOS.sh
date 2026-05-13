#!/usr/bin/env dash
chmod o+r /sys/class/powercap/intel-rapl:*/energy_uj
cpupower frequency-set --governor schedutil
sysctl --write kernel.sched_bore=1
sysctl --write vm.workingset_protection=1
sysctl --write vm.defrag_mode=1
sysctl --write kernel.randomize_va_space=0
echo passive | tee /sys/devices/system/cpu/intel_pstate/status
echo passive | tee /sys/devices/system/cpu/amd_pstate/status
echo adios | tee /sys/block/nvme*/queue/scheduler
echo adios | tee /sys/block/sd*/queue/scheduler
exit
