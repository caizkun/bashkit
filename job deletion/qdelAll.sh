#!/bin/bash
#
# kill all the submitted job tasks
#
# put an alias in your ~/.bashrc or ~/.bash_profile
# alias qdelAll="/path_to_this_directory/qdelAll.sh"

USERNAME='zcai12'
qstat -u $USERNAME | awk -F. "/$USERNAME/{print \$1}" | xargs qdel




#---- another version ----
#USERNAME=zcai1i2

#to kill all the jobs
#qstat -u $USERNAME | cut -d "." -f 1 | xargs qdel
 
#to kill all the running jobs
#qstat -u $USERNAME | grep "R" | cut -d "." -f 1 | xargs qdel
 
#to kill all the queued jobs
#qstat -u $USERNAME | grep "Q" | cut -d "." -f 1 | xargs qdel
