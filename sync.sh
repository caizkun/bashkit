#!/bin/bash
# sync and backup files with exclusion enabled

# config
USER='zcai12'
HOST='golub.campuscluster.illinois.edu'

src="$USER@$HOST:~/scratch/BosonPeakInWater"
dest='.'

# format/pattern to exclude
fmt2Excl=('*.trr' '*.log' '*.e*' '*.o*' '*.bak')


# prepare a exclusion file
exclFile='exclude.txt'
> $exclFile
printf "\nBelow patterns will be excluded: \n"
for fmt in ${fmt2Excl[@]}; do
    echo $fmt >> $exclFile
    echo "  $fmt" 
done

# start sync
printf "\nstart syncing ...\n\n"
rsync -avr --exclude-from=$exclFile $src $dest




