#!/bin/bash
#
# delete a job sequence based on the range of jobid
#
# put an alias in your ~/.bashrc or ~/.bash_profile
# alias qdelRange="/path_to_this_directory/qdelRange.sh"


qdel `seq -f "%.0f" $1 $2`


