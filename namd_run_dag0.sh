#!/bin/bash
source /cvmfs/oasis.opensciencegrid.org/osg/modules/lmod/5.6.2/init/bash
module load namd/2.9
namd2 ubq_gbis_eq_dag0.conf > ubq_gbis_eq_dag0.log
mkdir OutFilesFromNAMD_dag0
cp * OutFilesFromNAMD_dag0/.
rm *
tar cvzf OutFilesFromNAMD_dag0.tar.gz OutFilesFromNAMD_dag0
