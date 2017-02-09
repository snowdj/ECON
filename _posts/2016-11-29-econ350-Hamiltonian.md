---
published: true
layout: post
title: Hamiltonian and Stock-Flow Problem
category: econ350
tags:
  - Hamiltonian
  - Dynamic programming
  - Bellman equation
---
### 45 Stock-Flow problem

Lagrangean

factor out y_t in Lagrangean

take derivative with respect to y_t


$$
\pi_{t+1} -\pi_{t} = -[F_{Y_t} + \pi_{t+1} Q_{Y_t}  ]
$$

where $Y_{t+1} - Y_{t} = Q_{t}$.



#### Hamiltonian

$$
H(Y_t, Z_t, \pi_{t+1}, t) = F(Y_t, Z_t,t) +  \pi_{t+1} Q(Y_t, Z_t, \pi_{t+1}, t)
$$


For each period , maximize H by choosing Z_t Y_t in peroid t.


### 47 Maximum principle

2. maximum principle

p150 
Transform dynamic problem into a equence of static problems that are connectec by inter temporal euqations.


(i) p150 interpretation of Hamiltonian

**"Thus the Hamiltonina offeres a simple way of altering the one-period objective function F(y,z, t) to take into account the future consequences of the choice of controls z at t."**

"zt will change F and y_t+1. "

	- F term
    - $\pi Q(y, z, t) $


3. Intertemporal connector for $\pi$.   "$\pi$  connector "



$$
\pi_{t+1} -\pi_{t} = -H^*_{Y_{t}}
$$

Or by the Envolope thereom: only direct effect of theta, induced effect zero.

$$
\pi_{t+1} -\pi_{t} = -L_{Y_{t}}
$$


Since

$$
-\frac{d H^*} {d Y_t} = - \frac{d L } {d Y_{t}}
$$

4. "$Y$  connector "


$$
\frac{d H^* }{d \pi_{t+1}} = \frac{d L }{ d \pi_{t+1}}
$$

And

$$
\frac{d H^* }{d \pi_{t+1}} = Q_{t}
$$


where $Y_{t+1} - Y_{t} = Q_{t}$.

Then

$$
\frac{d H^* }{ d \pi_{t+1}} = Y_{t+1} - Y_{t}
$$



5.  Hamiltonian FOC.


 a. $$H_{Z_{t}} = F_{Z_{t}}   +  \pi_{t+1}  Q^*_{Z_{t}}  $$
 
**"The effect of z_t on y_t+1, equals its effects on Q(y,z,t), and the resulting chagne in the objective function is found by multiplying this by the shadow price  $\pi_{t+1}$  of y_t+1"**
 
 
 **"Thus the Hamiltonina offeres a simple way of altering the one-period objective function F(y,z, t) to take into account the future consequences of the choice of controls z at t."**
 
 b. 
$$
 -H^*_{Y_{t}}  = \pi_{t+1} -\pi_{t}
$$
 
 
 
 
**" These can be thought of as a dividend. The change in price $ \pi_{t+1} -\pi_{t} $ is like a capital gain, except that the prices are in present-value terms, so $\pi_{t+1} $  contains an extra discount factor that captures the usual interest or opportunity cost of carrying y_t for one period. "**

**"When y_t is optimum, the overall marginal return ,or the sum of these components, should be zero. That is just what (10.8) express when written as "**


$$
[F_{Y_t}] + \pi_{t+1} Q_{Y_t} +[  \pi_{t+1} -\pi_{t}] = 0 
$$

"This is an intertemporal no-arbitrage condition"
 
 c.
$$
\frac{d H^* }{ d \pi_{t+1}} = $Y_{t+1} - Y_{t}
$$


##### Solve

1. clculate a. b. c. for each period

2. start in T

3. solve backwards,



#### 48 Example


P 156

example 10.2 optimum growth



