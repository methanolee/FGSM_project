# FGSM_project
**A pytorch implementation of "[Explaining and harnessing adversarial examples](https://arxiv.org/abs/1412.6572)"**

## Summary
This code is a pytorch implementation of **FGSM(Fast Gradient Sign Method).**   
In this code, FGSM is used to fool [Inception v3](https://arxiv.org/abs/1512.00567).   
The picture '[Giant Panda](http://www.image-net.org/)' is exactly the same as in the paper.   
You can add other pictures with a folder with the label name in the 'data'.   

## Requirements
* python==3.8   
* numpy==1.21.3   
* pytorch==1.0.2   

## Experiments
* Targeted FGSM
* Non-targeted FGSM
* i-FGSM
