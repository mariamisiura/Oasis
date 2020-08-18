#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=32
#SBATCH --time=1-00:15:00     # 8 days and 15 minutes
#SBATCH --mail-user=mmisiura1@gsu.edu
#SBATCH --mail-type=ALL
#SBATCH -p qPSYC
#SBATCH -e /home/users/mmisiura1/error%A-%a.err
#SBATCH -o /home/users/mmisiura1/out%A-%a.out

rsync -r --progress OASIS_8 /Project/COBRE_WORK/Oasis_gift_recon
