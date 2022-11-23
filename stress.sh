#!/usr/bin/bash

echo -e "\n\E[1;33mPOSIX message queue\E[0m\n"
stress-ng --mq 0 -t 60s --times --perf --log-brief

#echo -e "\n\E[1;33mBogo Ops\E[0m\n"
#stress-ng --matrix 0 -t 60s --metrics-brief --log-brief

# cpu - CPU intensive
# cpu-cache - stress CPU instruction and/or data caches
# device - raw device driver stressors
# io - generic input/output
# interrupt - high interrupt load generators
# filesystem - file system activity
# memory - stack, heap, memory mapping, shared memory stressors
# network - TCP/IP, UDP and UNIX domain socket stressors
# os - core kernel stressors
# pipe - pipe and UNIX socket stressors
# scheduler - force high levels of context switching
# security - Selinux stressor
# vm - Virtual Memory stressor (paging and memory)

echo -e "\n\E[1;33mCPU\E[0m\n"
stress-ng --class cpu --all 1 --timeout 60s --metrics-brief --log-brief

echo -e "\n\E[1;33mIO\E[0m\n"
stress-ng --class io --all 1 --timeout 60s --metrics-brief --log-brief

echo -e "\n\E[1;33mInterrupt\E[0m\n"
stress-ng --class interrupt --all 1 --timeout 60s --metrics-brief --log-brief

echo -e "\n\E[1;33mFile System\E[0m\n"
stress-ng --class filesystem --all 1 --timeout 60s --metrics-brief --log-brief

#echo -e "\n\E[1;33mMemory\E[0m\n"
#stress-ng --class memory --sequential 0 --timeout 60s --metrics-brief --log-brief

echo -e "\n\E[1;33mNetwork\E[0m\n"
stress-ng --class network --all 1 --timeout 60s --metrics-brief --log-brief

echo -e "\n\E[1;33mOS\E[0m\n"
stress-ng --class os --all 1 --timeout 60s --metrics-brief --log-brief

echo -e "\n\E[1;33mPIPE\E[0m\n"
stress-ng --class pipe --all 1 --timeout 60s --metrics-brief --log-brief

echo -e "\n\E[1;33mScheduler\E[0m\n"
stress-ng --class scheduler --all 1 --timeout 60s --metrics-brief --log-brief

#echo -e "\n\E[1;33mSecurity\E[0m\n"
#stress-ng --class security --all 1 --timeout 60s --metrics-brief --log-brief

echo -e "\n\E[1;33mVirtual Memory\E[0m\n"
stress-ng --class vm --all 1 --timeout 60s --metrics-brief --log-brief