# Exploring ensemble applications for multi-sequence myocardial pathology segmentation

Submission to the [MyoPS2020 challenge](http://www.sdspeople.fudan.edu.cn/zhuangxiahai/0/MyoPS20/).
If you want to reproduce our results, you need the data from that challenge.

Our experiments are documented in the notebooks of the `code` directory.

This repository is archived at zenodo: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3982325.svg)](https://doi.org/10.5281/zenodo.3982325)
Final trained models are available at: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3985837.svg)](https://doi.org/10.5281/zenodo.3985837)

## Requirements

A list of required programs and packages. The listed version is the one used for our analysis (older or newer versions might work but are untested).

### Hardware

In order to reproduce our results in an acceptable time frame GPU hardware is required. The setup we used was:

 - Google Colab GPU instances
 - Our own HPC within the Comprehensive Heart Failure Center i. 8x Intel(R) Xeon(R) CPU E5-2630 v3 @ 2.40GHz ii. 512 GB of memory iii. 1x NVIDIA Tesla K80 with 12 GB of memory
 
The parameter searches were done on Google Colab while final training and prediction were done on the CHFC computer.

### Software
#### Python

These packages and versions were installed locally, in Google Colab the pre-installed versions were used, only for `torchio`, `fastai2`, and `monai` the latest versions were installed using `!pip`

    python 3.7.7
    jupyter 1.0.0
    nibabel 3.0.1
    numpy 1.19.0
    scipy 1.5.0
    scikit-image 0.15.0
    tqdm 4.47.0
    pytorch 1.5.1
    fastai2 0.0.17
    torchio 0.15.5
    monai 0.2.0

#### R

    R 3.6.1
    tidyverse 1.3.0
