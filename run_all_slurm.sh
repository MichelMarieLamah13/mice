#!/bin/bash
#SBATCH --job-name=mice
#SBATCH --partition=gpu
#SBATCH --time=7-00:00:00
#SBATCH --cpus-per-task=10
#SBATCH --mem=32G
#SBATCH --output=mice_output.log
#SBATCH --error=mice_error.log


source /etc/profile.d/conda.sh
conda activate kiwano

bash download_models.sh
# bash run_all.sh

conda deactivate
