#!/bin/bash
#SBATCH --job-name=jobxgboost.sh
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=40
#SBATCH --mem=128gb
#SBATCH --time=8:00:00
#SBATCH --mail-user=arian.abdipour@ugent.be
#SBATCH --mail-type=ALL

module load R/4.3.2-gfbf-2023a R-bundle-CRAN/2023.12-foss-2023a

export R_LIBS_USER="/user/gent/475/vsc47589/R/library"

Rscript -e "
source('/user/gent/475/vsc47589/MyScripts/xgboost2classArianHPC.R')
"