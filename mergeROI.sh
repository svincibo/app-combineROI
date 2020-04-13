#!/bin/bash

#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:20:00
#PBS -l vmem=30gb

# Show commands running.
set -x 
set -e

# Parse input file names from config.json. 
roi1=($(jq -r .rois[0] config.json))
roi2=($(jq -r .rois[1] config.json))

# Make an output directory.
mkdir -p output
mkdir -p output/rois

# Copy files from the roi1 location to the new location and rename.
for roiname in $(ls $roi1); do
	cp $roi1/$roiname output/rois/rois1-$roiname
done

# Copy files from the roi2 location to the new location and rename.
for roiname in $(ls $roi2); do
	cp $roi2/$roiname output/rois/rois2-$roiname
done

