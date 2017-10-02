#!/bin/bash
#
# kill all the queued jobs
#
# put an alias in your ~/.bashrc or ~/.bash_profile
# alias qdelQueued="/path_to_this_directory/qdelQueue.sh"


USERNAME='zcai12'
qstat -u $USERNAME | awk -F. '/00 Q /{printf $1" "}' | xargs qdel
