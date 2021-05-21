# VisDataSurgicalSkill

## Background
Include Abstract Later

## Data
My extensions to the JIGSAWS dataset are part of this repository, however, to fully be able to use the scripts/jupyter-notebooks, you will need a copy of the original JIGSAWS set, in the same place as my extensions are available (data/JIGSAWS). This is required, because many of the scripts need the actual video files as input. I do not disclose the JIGSAWS dataset, as it is not within my right.

Dependencies
------------

* Numpy 1.19.5
* PyAutoGUI 0.9.52
* opencv-python 4.2.0.34
* scipy 1.4.1
* scikit-learn 0.23.2
* Keras  2.1.5

To install all these dependencies you can run
::
    pip3 install -r requirements.txt


## Instructions
Step 1: run ROI data notebook, save the ROI files (already provided for the JIGSAWS data, only necessary if you wish to use your own data)

Step 2: run the Automatic\_Data\_Generation notebook, to generate the csvs (same as step 1, already provided for the JIGSAWS data)

Step 3: run getData.m for each configuration (change the sliding window parameters, and run with each combination, or just choose one and generate it that way)

Step 4: run Benchmark Methods


Citation
----------

If you find this work useful for your publications, please consider citing::

    @inproceedings{2DVisualData,
    title={Title To Do},
    author={Gábor Lajkó, Renáta Nagyné Elek, Tamás Haidegger}},
    booktitle={Conference Title},
    year={2021}
    }
