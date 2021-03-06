#!/bin/bash
#
#all commands that start with SBATCH contain commands that are just used by SLURM for scheduling
#################
#time you think you need; default is one hour
#in minutes
# In this case, hh:mm:ss, select whatever time you want, the less you ask for the faster your job will run.
# Default is one hour, this example will run in  less that 5 minutes.
#SBATCH --time=48:00:00

#################
#a file for job output, you can check job progress
#SBATCH --output=/home/yunjae/slurm/slurm-%j.out

#################
# --gres will give you one GPU, you can ask for more, up to 8 (or how ever many are on the node/card)
#SBATCH --gres=gpu:1

#################
#number of nodes you are requesting
#SBATCH --nodes=1

#################
#memory per node; default is 4000 MB per CPU
#SBATCH --mem=4000
#SBATCH --constraint=gpu_12gb

#################
# Have SLURM send you an email when the job ends or fails, careful, the email could end up in your clutter folder
#SBATCH --mail-type=END,FAIL # notifications for job done & fail
#SBATCH --mail-user=jason@cs.nyu.edu

path=$1
prefix=$2
scr=$3
cd $path
pwd

for iter in 1 2 3 4 5
do
    if [ "$iter" = 1 ];
    then
        command="${scr} --no_tqdm --prefix ${prefix}"
        echo $command
        srun $command
    else
        command="${scr} --no_tqdm --load_from ${prefix}"
        echo $command
        srun $command
    fi
done
