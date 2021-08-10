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

    @Article{s21165412,
    AUTHOR = {Lajkó, Gábor and Nagyné Elek, Renáta and Haidegger, Tamás},
    TITLE = {Endoscopic Image-Based Skill Assessment in Robot-Assisted Minimally Invasive Surgery},
    JOURNAL = {Sensors},
    VOLUME = {21},
    YEAR = {2021},
    NUMBER = {16},
    ARTICLE-NUMBER = {5412},
    URL = {https://www.mdpi.com/1424-8220/21/16/5412},
    ISSN = {1424-8220},
    ABSTRACT = {Objective skill assessment-based personal performance feedback is a vital part of surgical training. Either kinematic—acquired through surgical robotic systems, mounted sensors on tooltips or wearable sensors—or visual input data can be employed to perform objective algorithm-driven skill assessment. Kinematic data have been successfully linked with the expertise of surgeons performing Robot-Assisted Minimally Invasive Surgery (RAMIS) procedures, but for traditional, manual Minimally Invasive Surgery (MIS), they are not readily available as a method. 3D visual features-based evaluation methods tend to outperform 2D methods, but their utility is limited and not suited to MIS training, therefore our proposed solution relies on 2D features. The application of additional sensors potentially enhances the performance of either approach. This paper introduces a general 2D image-based solution that enables the creation and application of surgical skill assessment in any training environment. The 2D features were processed using the feature extraction techniques of a previously published benchmark to assess the attainable accuracy. We relied on the JHU–ISI Gesture and Skill Assessment Working Set dataset—co-developed by the Johns Hopkins University and Intuitive Surgical Inc. Using this well-established set gives us the opportunity to comparatively evaluate different feature extraction techniques. The algorithm reached up to 95.74% accuracy in individual trials. The highest mean accuracy—averaged over five cross-validation trials—for the surgical subtask of Knot-Tying was 83.54%, for Needle-Passing 84.23% and for Suturing 81.58%. The proposed method measured well against the state of the art in 2D visual-based skill assessment, with more than 80% accuracy for all three surgical subtasks available in JIGSAWS (Knot-Tying, Suturing and Needle-Passing). By introducing new visual features—such as image-based orientation and image-based collision detection—or, from the evaluation side, utilising other Support Vector Machine kernel methods, tuning the hyperparameters or using other classification methods (e.g., the boosted trees algorithm) instead, classification accuracy can be further improved. We showed the potential use of optical flow as an input for RAMIS skill assessment, highlighting the maximum accuracy achievable with these data by evaluating it with an established skill assessment benchmark, by evaluating its methods independently. The highest performing method, the Residual Neural Network, reached means of 81.89%, 84.23% and 83.54% accuracy for the skills of Suturing, Needle-Passing and Knot-Tying, respectively.},
    DOI = {10.3390/s21165412}
    }

if you found it in the journal MDPI Sensors, or::

    @inproceedings{IEEE2021VisDataSkillA,
      author        = "Lajkó, Gábor and Nagyné Elek, Renáta and Haidegger, Tamás",
      title         = "Surgical Skill Assessment Automation Based on Sparse Optical Flow Data",
      booktitle     = "INES 2021 25th IEEE International Conference on Intelligent Engineering Systems 2021",
      address       = "Budapest, Hungary",
      month         = jul,
      year          = "2021"
    }
if you found it through the IEEE INES 2021 conference proceedings.
