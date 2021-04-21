# BSN


This repo holds the pytorch-version codes of paper: "BSN: Boundary Sensitive Network for Temporal Action Proposal Generation".

[[Arxiv Preprint]](http://arxiv.org/abs/1806.02964)


### Update
* 2021.04.16: update for pytorch>=1.4 and python3.X, and fix some bug
* 2018.12.12: Release Pytorch-version BSN[origion-repo](https://github.com/wzmsltw/BSN-boundary-sensitive-network.pytorch)
* 2018.09.26: Previously, we adopted classification results from result files of "Uts at activitynet 2016" for action detection experiments. Recently we found that the classification accuracy of these results are unexpected high. Thus we replace it with classification results of "cuhk & ethz & siat submission to activitynet challenge 2017" and updated all related experiments accordingly. You can find updated papers in my [homepage](wzmsltw.github.io) and in arXiv.
* 2018.07.09: Codes and feature of BSN
* 2018.07.02: Repository for BSN


###  Contents

* [Paper Introduction](#paper-introduction)
* [Other Info](#other-info)
* [Prerequisites](#prerequisites)
* [Code and Data Preparation](#Code_and_Data_Preparation)
* [Training and Testing  of BSN](#Training_and_Testing_of_BSN)


###  Usage

1. Requirement:

   - Hardware: tested with 8 x 2080Ti.
   - Software: tested with PyTorch >= 1.4.0, this project build by 1.4.1; Python3.6.9, CUDA 10.1, [tensorboardX](https://github.com/lanpa/tensorboardX).

2. Clone this repo with git, please use:
```
git clone https://github.com/NEUdeep/BSN.git
```


### Datasets

We support experiments with publicly available dataset ActivityNet 1.3 for temporal action proposal generation now. To download this dataset, please use [official ActivityNet downloader](https://github.com/activitynet/ActivityNet/tree/master/Crawler) to download videos from the YouTube.

To extract visual feature, we adopt TSN model pretrained on the training set of ActivityNet, which is the challenge solution of CUHK&ETH&SIAT team in ActivityNet challenge 2016. Please refer this repo [TSN-yjxiong](https://github.com/yjxiong/temporal-segment-networks) to extract frames and optical flow and refer this repo [anet2016-cuhk](https://github.com/yjxiong/anet2016-cuhk) to find pretrained TSN model.

For convenience of training and testing, we rescale the feature length of all videos to same length 100, and we provide the rescaled feature at here [Google](https://drive.google.com/file/d/1ISemndlSDS2FtqQOKL0t3Cjj9yk2yznF/view). After download and unzip, please put `csv_mean_100` directory to `./data/activitynet_feature_cuhk` .
1. get activitynet_feature_cuhk
[Google](https://drive.google.com/file/d/1ISemndlSDS2FtqQOKL0t3Cjj9yk2yznF/view)
and then:
```ln -s activitynet_feature_cuhk ./data/activitynet_feature_cuhk```


#### label
```
you will find label in ./data
```

###  Training and Testing  of BSN

All configurations of BSN are saved in opts.py, where you can modify training and model parameter.
you will find it in ```doc/train.md```


### Visualization:

   - [tensorboardX](https://github.com/lanpa/tensorboardX) incorporated for better visualization regarding curves:

     ```shell
     tensorboard --logdir=exp/imagenet/yourmodel_events_path
     ```

### Other:

   - Resources: GoogleDrive [LINK](come soon...) contains shared models.


### Formatting: 
   - yapf[https://github.com/google/yapf/]


### Contact
For any question, please file an issue or contact
```
Tianwei Lin: wzmsltw@sjtu.edu.cn
Kanghaidong: hdkustl@gmail.com(update code)
```