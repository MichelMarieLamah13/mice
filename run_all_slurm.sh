#!/bin/bash
#SBATCH --job-name=kiwano
#SBATCH --partition=gpu
#SBATCH --time=7-00:00:00
#SBATCH --mem=30GB
#SBATCH --cpus-per-task=30
#SBATCH --output=kiwano_output.log
#SBATCH --error=kiwano_error.log


source /etc/profile.d/conda.sh
conda activate mice


bash download_models.sh
# python3 run_stage_two.py -task imdb -stage2_exp mice_binary -editor_path results/imdb/editors/mice/imdb_editor.pth
./run_all.sh


conda mice
