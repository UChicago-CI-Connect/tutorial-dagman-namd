#!/bin/bash
tar xzf OutFilesFromNAMD_dag0.tar.gz 
mv OutFilesFromNAMD_dag0/*dag0.restart* .

source /cvmfs/oasis.opensciencegrid.org/osg/modules/lmod/5.6.2/init/bash
module load namd/2.9
namd2 ubq_gbis_eq_dag1.conf > ubq_gbis_eq_dag1.log
mkdir OutFilesFromNAMD_dag1
rm *dag0*
cp * OutFilesFromNAMD_dag1/.
rm *
tar czf OutFilesFromNAMD_dag1.tar.gz OutFilesFromNAMD_dag1
