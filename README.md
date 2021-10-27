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
* torch==1.6.0
* torchvision==0.2.0
* matplotlib==3.0.3
* scipy==1.7.1
* pyjson==1.3.0  

## Experiments
* Targeted FGSM
* Non-targeted FGSM
* i-FGSM

## How to use this
1. Install Docker
2. Clone this project
3. Build: `sudo docker build -t fgsm/project .`
4. Run: `sudo docker run -p 7777:7777 fgsm/project`
5. Open browser and paste the **url**
6. Paste **token**
