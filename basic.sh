#!/bin/sh
#SBATCH --job-name=negs
#SBATCH --output data.out
#SBATCH --error data.err
#SBATCH -N 1
#SBATCH --gres=gpu:1
#SBATCH -p v100-32gb-hiprio

#export CUDA_VISIBLE_DEVICES=0,1

#Load your modules first:

module load python3/anaconda/2020.02
module load cuda/10.1

source activate test

## this worked
#PYTHONPATH=/home/revathy/.conda/envs/recipe1m/lib/python3.8/site-packages/

##Add your code here:
echo " Hostname is:"
hostname

python test.py

echo "date is:"
date 



