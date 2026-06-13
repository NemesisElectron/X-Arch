#!/usr/bin/env dash
chmod o+r /sys/class/powercap/intel-rapl:*/energy_uj
cpupower frequency-set --governor schedutil
sysctl --write kernel.sched_bore=1
sysctl --write vm.defrag_mode=1
echo adios | tee /sys/block/nvme0n1/queue/scheduler
exit
