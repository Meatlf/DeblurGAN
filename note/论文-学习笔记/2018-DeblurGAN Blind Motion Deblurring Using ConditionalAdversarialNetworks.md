# 2018-DeblurGAN: Blind Motion Deblurring Using ConditionalAdversarialNetworks

**声明**：模型、代码和数据集的地址：

https://github.com/KupynOrest/DeblurGAN  

## Abstract

**Q**：主要工作？

**A**：提出**DeblurGAN**，这是一种**针对运动模糊**的**端到端学习方法**。该方法主要基于条件GAN和content loss。

**Q**：主要成果？

**A**：

1）DeblurGAN在structural similarity measure和visual appearance方面都成为了state-of-the art；

2）DeblurGAN应用于目标检测，比与DeblurGAN最接近的竞争对手-DeepDeblur[25]；

3）将介绍一种新型的从锐化图像（sharp ones）中合成运动模糊的图像，从而实现现实的数据增强（realistic dataset augmentation）。

## 1.Introduction

perceptually  	感知上

Q：生成对抗网络（generative adversarial networks，GANs）有哪些较新的应用？

A：用于图像超分辨率（super-resolution）和图像修复（inpainting）。

Q：GANs最为出名的是什么功能？

A：GANs以在图像中保存纹理细节、创建接近真实图像流形的解决方案和看起来令人信服的能力而闻名。

Q：为什么作者会想到使用GANs来对图像去模糊？

A：因为二者都是图像到图像的转换。

Q：本文的主要贡献？

A：

1）提出一种代价函数（loss）和模型架构（architecture）在运动模糊邻域中成为了SOTA，比竞争对手快5倍多；

2）提出了一种基于随机轨迹（trajectory）的方法，从一组清晰图像中自动生成用于运动去模糊训练的数据集。我们证明，将其与现有的运动去模糊学习数据集相结合，与仅在真实图像上进行训练相比，可以改善结果。

3）提出了一种新的数据集和方法来评估如何改善目标检测结果的去模糊算法。

## 2.Related work

### 2.1.Image Debluring

**Q**：去模糊问题是如何进行分类的？

**A**：去模糊问题可以分为盲目（blind）和非盲目（non-blind）去模糊。

**Q**：如何评价非盲目去模糊的这类算法？

**A**：

1）寻找到一个模糊核适用于所有像素点，这是一个ill-posed的问题；

2）对于模糊函数，需要启发式的（heuristic）、图像分析和假设，这样就很依赖于人的先验知识；

3）非盲目去模糊需要对复杂的模糊进行简单化建模，这样其适用性就比较差；

4）非盲目去模糊中有一类是用到了迭代的方法，但是这类方法存在运行时间（running time）长、停止准则（stopping criterion）不明确的问题；

5）非盲目去模糊中还有一类是假设局部线性模糊核和简单的启发式的快速评估未知核的方法，这类方法速度快但是只能对一部分的图像集适用。

**Q**：有哪些模糊建模的算法？

**A**：

1）Whyte等人基于相机在曝光过程中旋转速度的模糊过程参数化几何模型，提出了一种新的非均匀盲消模糊算法；

2）Gupta假设模糊只是由3D相机移动造成的。

**Q**：基于学习的去模糊算法如何分类？

**A**：

1）利用CNN估计未知的模糊函数（blur function）；

2）无需核的端到端方法。

### 2.2 Generative adversarial networks

### 2.3 Conditional adversarial networks

## 4.Motion blur generation

synthetically 综合的

**Q**：如何评价使用高帧率相机，求视频中多个锐化帧的平均值来模拟模糊[27,25]？

**A**：可以获得逼真的模糊图片，但这将图片的场景限制到拍摄的视频中，这使得数据集的缩放变得复杂。

**Q**：前人是如何生成运动模糊图片的？

**A**：

1）Sun等人[36]对原始图进行卷积生成73种可能的线性运动核，Xu[43]也类似。

2）Chakrabarti[6]通过采样6个随机点并拟合一个样条来创建模糊核。

**Q**：本文是如何生成运动模糊图片的？

**A**：本文参考Boracchi和Foi[4]的随机轨迹生成（random trajectories generation），然后将亚像素插值应用于轨迹矢量，生成核函数。每个轨迹向量是个复杂值向量。轨迹生成通过Markov过程。轨迹下一个点的位置是根据前一个点的速度和位置、高斯扰动、脉冲扰动和确定的惯性分量随机生成的。

## 5.Training Details

一个DeblurGAN网络训练需要6天时间。

