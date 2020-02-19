# Restoration of defocused and blurred images

**总结**：本文介绍了模糊的概念、分类、数学模型、基于数字图像处理的模糊的算法及其实际效果。

**说明**：已使用hypothes插件记录了该博客里的英语单词。

defect 缺陷

**Q**：造成图像模糊（blur）的原因有哪些？

**A**：散焦（defocused）和运动（movement）。

## Introduction

**小结**：该小节通过一维图像的例子论证了图像去模糊的可行性。

afar

irreversible

spot

flat

criteria 准则

## Blurring process model

**小结**：本小节通过更加正式和科学的角度来描述模糊（blurring）和复原（restoration）的过程，具体见式（1）。

Q：如何理解模糊函数（blurring function）？

A：源图像的每个像素向周围扩散成目标图像的过程就叫做模糊函数。

## Blurring functions

**小结**：本小节主要介绍了模糊函数作用于源图像可以用数学上的卷积（convolution）表示，具体见式（2）。

## Noise model

**小结**：本小节介绍了图像领域常见的噪声。

## Convolution theorem

**小结**：根据Blurring functions小节的式（2），直接从g(x,y)计算得到f(x,y)的过程需要解大量的方程。因而本小节利用卷积理论将式（2）的时域形式表示为频域形式的式（4），为后续的求解工作奠定了基础。

## Inverse filter

**小结**：本小节介绍了反滤波（inverse filter）的计算式（5），并且说明了为什么反滤波不实用。

## Existing approaches to deconvolution

**Q**：如何理解维纳滤波（Wiener filter）？

**A**：维纳滤波将图像和噪音当做随机的处理过程，利用使得我们找到的值$$f'$$与无失真图像$$f$$的最小均方差（mean square deviation）最小。

Q：如何理解Constrained Least Squares Filtering（Tikhonov filtration），（Tikhonov regularization）？

A：该算法的主要思想是构建带有一系列优化任何的矩阵。

## Practice



## 参考资料

[1] [Restoration of defocused and blurred images](https://yuzhikov.com/articles/BlurredImagesRestoration1.htm)

