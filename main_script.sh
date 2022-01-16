#!/bin/sh
#
# Simple Matlab submit script for Slurm.
#
#
#SBATCH -A nklab                 # The account name for the job.
#SBATCH -J odd_GLMdenoise           # The job name.
#SBATCH -t 1:00:00                  # The time the job will take to run.
#SBATCH -c 24       # The memory the job will use per cpu core.

module load matlab

echo "Launching an Matlab run"
date

#Command to execute Matlab code
matlab -nosplash -nodisplay -nodesktop -r "get_main_params"

# End of script