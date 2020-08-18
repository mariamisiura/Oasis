#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=32
#SBATCH --time=8-00:15:00     # 8 days and 15 minutes
#SBATCH --mail-user=mmisiura1@gsu.edu
#SBATCH --mail-type=ALL
#SBATCH -p qPSYC
#SBATCH -e /home/users/mmisiura1/error%A-%a.err
#SBATCH -o /home/users/mmisiura1/out%A-%a.out

export MODULEPATH=/apps/Compilers/modules-3.2.10/Debug-Build/Modules/3.2.10/modulefiles/

module load Framework/Matlab2016b
matlab -nodisplay -nosplash < /home/users/mmisiura1/Oasis_run.m
