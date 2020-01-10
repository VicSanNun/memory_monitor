#!/bin/bash

while sleep 10; do
	free -h | grep Mem | awk $"{print \"$(date +%d%t%H:%M:%S)\" \"\t\" \$3 \"\t\" \$7}" >> memory_log.txt 
done
