# Varying-Parameter RNN
A RNN Model for Solving Time-Varying Control Problems

- [[Paper 1]](https://ieeexplore.ieee.org/document/8589008) (Convergence Analysis)

- [[Paper 2]](https://ieeexplore.ieee.org/document/8463509) (Robustness Analysis)

- [[Slide]](https://github.com/ldkong1205/Varying-Parameter-RNN/blob/master/Slide(in%20Chinese).pdf) (in Chinese)


INTRODUCTION
-----
Many practical control problems can be solved by being formulated as time-varying quadratic minimization and time-varying quadratic programing problems. In this project, a power-type varying-parameter recurrent neural network is proposed and analyzed to effectively solve the resulting time-varying problems, as well as the original practical problems. For a clear understanding, we introduce this model from three aspects: design, analysis, and applications. Specifically, the reason why and the method we use to design this neural network model for solving online TVQP problems subject to time-varying linear equality/inequality are described in detail. The theoretical analysis confirms that when activated by six commonly used activation functions, the proposed network achieves a superexponential convergence rate. In contrast to the traditional zeroing neural network with fixed design parameters, the proposed model has better convergence performance. Comparative simulations with state-of-the-art methods confirm the advantages. Furthermore, the application of the proposed to a robot motion planning problem verifies the feasibility, applicability, and efficiency.

Keywords: `time-varying systems`,  `recurrent neural network`,  `convergence`, `robustness`, `dynamic programming`.

<br>

![image](https://github.com/ldkong1205/Varying-Parameter-RNN/blob/master/image/Kinova.jpg)

<br>

NETWORK STRUCTURE
-----
<br>

![image](https://github.com/ldkong1205/Varying-Parameter-RNN/blob/master/image/network.jpg)

<br>

LICENSE
-----

Copyright © School of Automation Science & Engineering, South China University of Technology. All rights reserved.

```
@
```
