# Revision of the Köppen Climate Classification by Neural Networks (Python/Tensorflow)
Python/Tensorflow version of [nn-climate-classification](https://github.com/slcju/nn-climate-classification)

The methodology has two parts.
## Land cover mapping by neural network

This repo implements the first part in Python/Tensorflow, a translation of [the MATLAB version](https://github.com/slcju/nn-climate-classification). 

First run `model.py` to get the untrained network stored in the `net` folder.

Then run `training.py` to train the network and store it in the `trainedNet` folder.

Categorical accuracy is `70.81%` compared with MATLAB's `78.64%`.

### Differences between two implementations
>Note the `BatchNormalization` layers in Tensorflow and MATLAB behave differently.
>
>In MATLAB the parameters are determined by passing through the data once more after training and setting the `TrainedMean` and `TrainedVariance` properties to the mean and variance computed from the entire training dataset, respectively.
>
>In Tensorflow it is calculated by moving statistics of the dataset during training.
>
>Secondly, the learning rate schedule is staircase in MATLAB while in Tensorflow it's continuously changing through the learning steps.
>
>Thirdly the learning rate factors of the custom activation layer are not specially set in Tensorflow.

Finally run `feature_extraction.py` to obtain the features `features.mat`, equivalent to that in the MATLAB version.

## Climate clustering by self-organizing map

This part is not implemented; just use `features2clim.m` in the MATLAB repo.

The results are shown in `result_24kmeans.png` and `result_432som.png`.

Not quite desirable, it seems the network learns what it shouldn't learn (kind of overfitting).

The results overly lean towards land cover.

Possibly it could be improved by further fine-tuning the network.

It's hard to tell the differences in the backend of Tensorflow and MATLAB Deep Learning Toolbox.

## Requirements

- `tensorflow >= 2.9.1`
- `scipy >= 1.8.1` (to interact with MATLAB `.mat` files)
