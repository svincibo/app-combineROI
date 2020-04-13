#!/bin/bash

#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:20:00
#PBS -l vmem=30gb

# Show commands running.
set -x 
set -e

# Parse input file names from config.json. 
# Note: This was purposefully made to only handle two inputs because the pipelines cannot handle multi.
roi1=($(jq -r .rois1 config.json))
roi2=($(jq -r .rois2 config.json))

# Make an output directory.
mkdir -p output
mkdir -p output/rois

# Copy files from the roi1 location to the new location and rename.
for roiname in $(ls $roi1); do
	#cp $roi1/$roiname output/rois/rois1-$roiname
	cp $roi1/$roiname output/rois/ROI$roiname
done

# Copy files from the roi2 location to the new location and rename.
for roiname in $(ls $roi2); do
	#cp $roi2/$roiname output/rois/rois2-$roiname
	cp $roi2/$roiname output/rois/ROI$roiname
done

