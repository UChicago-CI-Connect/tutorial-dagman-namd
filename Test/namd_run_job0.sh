#!/bin/bash
source /cvmfs/oasis.opensciencegrid.org/osg/modules/lmod/5.6.2/init/bash
module load namd/2.9
namd2 ubq_gbis_eq_job0.conf > ubq_gbis_eq_job0.log
mkdir OutFilesFromNAMD_job0
cp *job0* OutFilesFromNAMD_job0/.
tar czf OutFilesFromNAMD_job0.tar.gz OutFilesFromNAMD_job0
