# VisDataSurgicalSkill

## Background
Skill assessment is a vital part of surgical training. Automated assessment solutions aim to replace traditional manual assessment techniques, that predominantly rely on the input of expert surgeons, whose time is a scarce and valuable resource. Typically either kinematic or visual input data is used to perform skill assessment. Minimally Invasive Surgery (MIS) benefits the patients by using smaller incisions than open surgery, resulting in less pain and quicker recovery, but increasing the difficulty of the surgical task manyfold. Robot-Assisted Minimally Invasive Surgery (RAMIS) offers higher precision during surgery, while also improving the ergonomy for the performing surgeons. Kinematic data have been proven to directly correlate with the expertise of surgeons performing RAMIS procedures, but for traditional MIS it is not readily available. Visual feature-based solutions are slowly catching up to the efficacy of kinematics-based solutions, but the best performing methods usually depend on 3D visual features, which require stereo cameras and calibration data, neither of which are available in MIS. This paper introduces a general 2D image-based solution that can enable the creation and application of surgical skill assessment solutions in any training environment. A well-established kinematics-based skill assessment benchmark's feature extraction techniques have been repurposed to evaluate the accuracy that the generated data can produce. We reached individual accuracies up to 95.74%, and mean accuracies - averaged over 5 cross-validation trials - up to 83.54%.

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
