#!/bin/bash
tar xzf OutFilesFromNAMD_dag1.tar.gz 
mv OutFilesFromNAMD_dag1/*dag1.restart* .

source /cvmfs/oasis.opensciencegrid.org/osg/modules/lmod/5.6.2/init/bash
module load namd/2.9
namd2 ubq_gbis_eq_dag2.conf > ubq_gbis_eq_dag2.log
mkdir OutFilesFromNAMD_dag2
rm *dag1*
cp * OutFilesFromNAMD_dag2/.
rm *
tar czf OutFilesFromNAMD_dag2.tar.gz OutFilesFromNAMD_dag2
