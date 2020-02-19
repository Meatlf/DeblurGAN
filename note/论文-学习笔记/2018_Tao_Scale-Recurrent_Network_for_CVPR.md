# 2018_Tao_Scale-Recurrent_Network_for_Deep_Image_Deblurring

**声明**：模型、代码和数据集的地址：

???

## Abstract

Q：主要工作？

A：提出Scale-recurrent Network（SRN-DeblurNet）用于去模糊（deblurring）的任务。

**Q**：主要成果？

**A**：

1）与许多最近基于学习的方法[25]相比，SRN-DeblurNet网络结构更加简单、参数更少、更容易训练；

2）本论文将SRN-DeblurNet的方法对**基于复杂运动的去模糊数据集**进行测试，相比较于目前的state-of-the-arts，本论文的方法在数量和质量上均更胜一筹。

## 1.Introduction

latent		  潜在的

ill-posed 	提法不当的

prior			先验知识

heuristic	启发式的

entangle    纠缠

commence 开始

coarse 

**Q**：去模糊（deblurring）的目标是什么？

**A**：去模糊的目的是得到锐化的（sharp）潜在的（latent）图片，并且该图片要带有必要的边缘结构和细节。

**Q**：传统去模糊的方法存在哪些问题？

**A**：

1）传统方法[1,3,6,39,14,40,26,27]对模糊的模型特征(均匀/非均匀/深度感知)应用各种约束条件，利用自然图像（natural image）各种不同的先验知识（prior）。

Q：如何评价之前的基于学习的方法？

A：之前的基于学习的方法[29,34,38]将利用额外数据学到的参数替换掉传统方法中的一些模块和步骤。

Q：如何评价最近的state-of-the-art的方法？

A：该方法[25]基于多尺度（multi-scale）的CNN，是一个由粗到细的去模糊的过程。

## 2.Related Work

**Image/Video Deblurring**

Q：去模糊开创性工作是谁做的？

A：Fergus等[12]和Shan等[30]。

Q：去模糊基于传统的方法有哪些？

A：

1）total variation（TV）[3]；

2）sparse image priors[22]；

3）heavy-tailed gradient prior[30]；

4）hyper-Laplacian prior[21]；

5）l0-norm gradient prior[40]；

6）frequency-domain methods[8,14]。

​	**说明**：传统方法1~5都基于由粗到细框架，而方法6不是并且方法6应用场景受限。

Q：去模糊基于学习的方法有哪些？

A：

1）Schuler等人[29]以由粗到细的方式将多个CNN堆叠起来，以模拟迭代优化；

2）Chakrabarti[2]预测频域中的反卷积核；

3）Su[33]等人使用跳连的编码解码网络来学习视频去模糊；

4）Nah[25]等人训练多尺度的深度网络来逐渐的复原锐化图像。

​	**说明**：方法1和2是使用CNN模块去替换掉传统框架的某些部分，方法3和4是使用端到端的方法使用不同结构来使用多尺度的信息。

**CNNS for Image Processing**

super-resolution 超分辨率

frame synthesis 

refine 