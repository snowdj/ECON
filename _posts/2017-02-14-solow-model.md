---
published: false
layout: post
title: The solow model in macroeconomics
category: macroeconomics
tags:
  - solow model
  - econ453
  - macroeconomics
---


The most economics students learn solow growth model. 

<!-- more -->

[Notebook for solow model](http://nbviewer.jupyter.org/github/jonduan/Economics_note/blob/master/macroeconomics/ECON453-Solow.ipynb)


Quick summary of Solow (1956)
=============================

_The following summary of the Solow model of economic growth largely follows `Romer (2011)`_.

`Romer (2011)`: http://highered.mheducation.com/sites/0073511374/index.html


`Solow (1956)`:  http://piketty.pse.ens.fr/files/Solow1956.pdf

### The production function


The Solow model of economic growth focuses on the behavior of four
variables: output, `Y`, capital, `K`, labor, `L`, and knowledge (or technology
or the "effectiveness of labor"), `A`. At each point in time the economy has
some amounts of capital, labor, and knowledge that can be combined to produce
output according to some production function, `F`.



$$Y(t) = F(K(t), A(t)L(t))$$

where `t` denotes time.

#### The evolution of the inputs to production

The initial levels of capital, :math:$K_0$, labor, :math:$L_0$, and technology,
$A_0$, are taken as given. Labor and technology are assumed to grow at
constant rates:


$$\dot{A}(t) = gA(t)$$
$$\dot{L}(t) = nL(t)$$

where the rate of technological progrss, `g`, and the population growth rate,
`n`, are exogenous parameters.

Output is divided between consumption and investment. The fraction of output
devoted to investment, `0 < s < 1`, is exogenous and constant. One unit
of output devoted to investment yields one unit of new capital. Capital is
assumed to decpreciate at a rate  $0\le \delta$. Thus aggregate capital
stock evolves according to



$$\dot{K}(t) = sY(t) - \delta K(t).$$

Although no restrictions are placed on the rates of technological progress and
population growth, the sum of `g`, `n`, and :math: $\delta$ is assumed to be
positive.

#### The dynamics of the model


Because the economy is growing over time (due to exogenous technological
progress and population growth) it is useful to focus on the behavior of
capital stock per unit of effective labor


    
$$k \equiv K/AL.$$

Applying the chain rule to the equation of motion for capital stock yields (after a
bit of algebra!) an equation of motion for capital stock per unit of effective
labor.


$$\dot{k}(t) = s f(k) - (g + n + \delta)k(t)$$

That's it! The Solow model of economic growth reduced to a single non-linear ordinary differential equation.


#### Short version of Romer textbook

http://www.reed.edu/economics/parker/314/notes/314-notes-solow.pdf

http://www.reed.edu/economics/parker/s11/314/book/Ch03.pdf




https://github.com/solowPy/solowPy


