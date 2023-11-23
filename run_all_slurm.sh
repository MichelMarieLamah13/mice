#!/bin/bash
#SBATCH --job-name=exp
#SBATCH --partition=gpu
#SBATCH --time=7-00:00:00
#SBATCH --mem=30GB
#SBATCH --cpus-per-task=30
#SBATCH --output=exp_output.log
#SBATCH --error=exp_error.log


source /etc/profile.d/conda.sh
conda activate mice

wget  http://www.cs.cmu.edu/~glai1/data/race/RACE.tar.gz -O data/

# bash download_models.sh
# python3 run_stage_two.py -task imdb -stage2_exp mice_binary -editor_path results/imdb/editors/mice/imdb_editor.pth
# bash run_all.sh


conda mice