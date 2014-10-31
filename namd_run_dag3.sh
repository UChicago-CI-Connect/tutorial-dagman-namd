#!/bin/bash
tar xzf OutFilesFromNAMD_dag2.tar.gz 
mv OutFilesFromNAMD_dag2/*dag2.restart* .

source /cvmfs/oasis.opensciencegrid.org/osg/modules/lmod/5.6.2/init/bash
module load namd/2.9
namd2 ubq_gbis_eq_dag3.conf > ubq_gbis_eq_dag3.log
mkdir OutFilesFromNAMD_dag3
rm *dag2*
cp * OutFilesFromNAMD_dag3/.
rm *
tar czf OutFilesFromNAMD_dag3.tar.gz OutFilesFromNAMD_dag3
