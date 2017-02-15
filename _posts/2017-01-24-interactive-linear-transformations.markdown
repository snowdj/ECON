---
layout: post
title: Interactive Linear Transformations
tags:
  - math
  - linear-algebra
mathjax: true
published: true
header-img: img/home-bg6.jpg
---

See [Interactive Linear Transforms](http://notmatthancock.github.io/software/interactive-linear-transforms/)


[What is linear transformation and examples]https://en.wikipedia.org/wiki/Linear_map


<!-- more -->



A $2 \times 2$ matrix, $A$, is a mapping, $A: \mathbb{R}^2 \mapsto \mathbb{R}^2$. To view the input and output of this function simultaneously, we'd need a 4D plot which is of course not possible. On the other hand, we can view both input and output vectors in the same plane.

Above, the input is blue while the output is red. Move the input vector around with your mouse to see where different points get mapped according the given matrix. Change the matrix values to see how different matrices operate. For example, try a singular matrix or rotation matrix. Also, try to visually determine the eigenvectors of a given matrix.


== Examples of linear transformation matrices ==
In two-[[dimension]]al space '''R'''<sup>2</sup> linear maps are described by [[2 × 2 real matrices]]. These are some examples:

* [[Rotation (mathematics)|rotation]] by 90 degrees counterclockwise:
*: <math>\mathbf{A}=\begin{pmatrix}0 & -1\\ 1 & 0\end{pmatrix}</math>
* [[Rotation (mathematics)|rotation]] by angle ''θ'' counterclockwise:
*: <math>\mathbf{A}=\begin{pmatrix}\cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}</math>
* [[Reflection (mathematics)|reflection]] against the ''x'' axis:
*: <math>\mathbf{A}=\begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix}</math>
* [[Reflection (mathematics)|reflection]] against the ''y'' axis:
*: <math>\mathbf{A}=\begin{pmatrix}-1 & 0\\ 0 & 1\end{pmatrix}</math>
* [[Scaling (geometry)|scaling]] by 2 in all directions:
*: <math>\mathbf{A}=\begin{pmatrix}2 & 0\\ 0 & 2\end{pmatrix}</math>
* [[shear mapping|horizontal shear mapping]]:
*: <math>\mathbf{A}=\begin{pmatrix}1 & m\\ 0 & 1\end{pmatrix}</math>
* [[squeeze mapping]]:
*: <math>\mathbf{A}=\begin{pmatrix}k & 0\\ 0 & 1/k\end{pmatrix}</math>
* [[Projection (linear algebra)|projection]] onto the ''y'' axis:
*: <math>\mathbf{A}=\begin{pmatrix}0 & 0\\ 0 & 1\end{pmatrix}.</math>












