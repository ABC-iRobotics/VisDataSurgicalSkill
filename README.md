# VisDataSurgicalSkill

## Data
My extensions to the JIGSAWS dataset are part of this repository, however, to fully be able to use the scripts/jupyter-notebooks, you will need a copy of the original JIGSAWS set, in the same place as my extensions are available (data/JIGSAWS). This is required, because many of the scripts need the actual video files as input. I do not disclose the JIGSAWS dataset, as it is not within my right.

## Instructions
Step 1: run ROI data notebook, save the ROI files (already provided for the JIGSAWS data, only necessary if you wish to use your own data)

Step 2: run the Automatic\_Data\_Generation notebook, to generate the csvs (same as step 1, already provided for the JIGSAWS data)

Step 3: run getData.m for each configuration (change the sliding window parameters, and run with each combination, or just choose one and generate it that way)

Step 4: run Benchmark Methods
