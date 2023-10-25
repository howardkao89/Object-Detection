# CSIE5428 Computer Vision Practice with Deep Learning Homework 1
* Name: 高榮浩
* ID: R12922127

## Environments

* Ubuntu 20.04
* GeForce RTX™ 2080 Ti 11G
* Python 3.8
* CUDA 11.8

1. Install Pytorch and torchvision
   ```sh
   conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
   ```
2. Install other needed packages
   ```sh
   pip install -r requirements.txt
   ```
3. Compiling CUDA operators
   ```sh
   cd models/dino/ops
   python setup.py build install
   cd ../../..
   ```

## Run

### Download

* Model Pre-trained checkpoint [LINK](https://drive.google.com/file/d/1CrzFP0RycSC24KKmF5k0libLRJgpX9x0/view)
* Pre-trained backbone checkpoint [LINK](https://github.com/SwinTransformer/storage/releases/download/v1.0.0/swin_large_patch4_window12_384_22k.pth)
* hw1_dataset

```
hw1_R12922127/
   ├── checkpoint0029_4scale_swin.pth
   ├── swin_large_patch4_window12_384_22k.pth
   ├── hw1_dataset/
      ├── ...
   └── ...
```

### Train

```sh
bash scripts/DINO_train_4scale_swin.sh swin_large_patch4_window12_384_22k.pth 
```

### Evaluate

```sh
bash scripts/DINO_eval_4scale_swin.sh logs/train/4SCALE-SWIN/checkpoint_best_regular.pth 
```

### Predict

Please refer to ```Notes.ipynb```, specifically Part 3. However, it's essential to execute the notebook's contents in the intended order for a smooth and accurate experience.