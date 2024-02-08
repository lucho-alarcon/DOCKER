#!/bin/sh
echo "Execution is being started"
echo "**************************"
jmeter -n -t /testplansuperpos.jmx -l /logfile.txt
#jmeter $@
echo "**************************"
echo "Execution has been completed, please check the artifacts to download the results."
