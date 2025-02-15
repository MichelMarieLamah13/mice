#!/bin/bash
#SBATCH --job-name=exp
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --gpus-per-node=rtx_2080_ti:1
#SBATCH --mem=8G
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=30
#SBATCH --time=7-00:00:00
#SBATCH --output=exp_output.log
#SBATCH --error=exp_error.log


source /etc/profile.d/conda.sh
conda activate mice

# wget  http://www.cs.cmu.edu/~glai1/data/race/RACE.tar.gz -O data/RACE.tar.gz

# tar -xzvf data/RACE.tar.gz -C data/

# bash download_models.sh

python3 run_stage_two.py -task imdb -stage2_exp mice_binary -editor_path results/imdb/editors/mice/imdb_editor.pth

# python3 -m pdb run_stage_two.py -task imdb -stage2_exp mice_binary -editor_path results/imdb/editors/mice/imdb_editor.pth

# bash run_all.sh


conda deactivate