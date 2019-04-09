#!/bin/bash
#MSUB -A <allocationID>		## <-- EDIT THIS TO BE YOUR ALLOCATION 
#MSUB -q <queue_type>           ## <-- EDIT THIS TO BE YOUR QUEUE NAME
#MSUB -l nodes=1:ppn=1
#MSUB -l walltime=00:10:00
#MSUB -l pmem=1gb
#MSUB -N sample_job
#MSUB -o outlog
#MSUB -e errlog

cd $PBS_O_WORKDIR 		## Directory from which the job was submitted
module load python  		## Load necessary modules (software, libraries)

bash whereami.sh                ## Run the program
python helloworld.py    	## Run the program
