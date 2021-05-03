<br />
<p align="center">
  <img src="image/vp-rnn.png" alt="logo" width="320" height="98">

  <p align="center">
  <strong>Power-Type Varying-Parameter RNN for Solving TVQP Problems: Design, Analysis, and Applications</strong>
  </p>
</p>

<p align="center">
  <a href="">
    <img src="https://img.shields.io/badge/Paper-%F0%9F%93%83-blue">
  </a>
  <a href="">
    <img src="https://img.shields.io/badge/Slides-%F0%9F%8E%AC-green">
  </a>
  <a href="">
    <img src="https://img.shields.io/badge/%E4%B8%AD%E8%AF%91%E7%89%88-%F0%9F%90%BC-red">
  </a>
</p>

## About
This repository contains the MATLAB implementation of <a href="https://ieeexplore.ieee.org/document/8589008">Power-Type Varying-Parameter RNN for Solving TVQP Problems: Design, Analysis, and Applications</a> (VP-RNN).

# Varying-Parameter RNN
An RNN Model for Solving Time-Varying Control Problems

- [[Paper 1](https://ieeexplore.ieee.org/document/8589008)] (Convergence Analysis)

- [[Paper 2](https://ieeexplore.ieee.org/document/8463509)] (Robustness Analysis)

- [[Slide](https://github.com/ldkong1205/Varying-Parameter-RNN/blob/master/Slide(in%20Chinese).pdf)] (in Chinese)


INTRODUCTION
-----
Many practical control problems can be solved by being formulated as time-varying quadratic minimization and time-varying quadratic programing problems. In this project, a power-type varying-parameter recurrent neural network is proposed and analyzed to effectively solve the resulting time-varying problems, as well as the original practical problems. For a clear understanding, we introduce this model from three aspects: design, analysis, and applications. Specifically, the reason why and the method we use to design this neural network model for solving online TVQP problems subject to time-varying linear equality/inequality are described in detail. The theoretical analysis confirms that when activated by six commonly used activation functions, the proposed network achieves a superexponential convergence rate. In contrast to the traditional zeroing neural network with fixed design parameters, the proposed model has better convergence performance. Comparative simulations with state-of-the-art methods confirm the advantages. Furthermore, the application of the proposed to a robot motion planning problem verifies the feasibility, applicability, and efficiency.

Keywords: `time-varying systems`,  `recurrent neural networks`,  `convergence`, `robustness`, `dynamic programming`.

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

- Copyright © School of Automation Science & Engineering, South China University of Technology. All rights reserved.

- Contact: ldkong@ieee.org.

Citation
-----

```
@ARTICLE{8589008, 
  author={Z. {Zhang} and L. {Kong} and L. {Zheng}}, 
  journal={IEEE Transactions on Neural Networks and Learning Systems}, 
  title={Power-Type Varying-Parameter RNN for Solving TVQP Problems: Design, Analysis, and Applications}, 
  year={2019}, 
  volume={30}, 
  number={8}, 
  pages={2419-2433}, 
}
```

```
@ARTICLE{8463509, 
  author={Z. {Zhang} and L. {Kong} and L. {Zheng} and P. {Zhang} and X. {Qu} and B. {Liao} and Z. {Yu}}, 
  journal={IEEE Transactions on Systems, Man, and Cybernetics: Systems}, 
  title={Robustness Analysis of a Power-Type Varying-Parameter Recurrent Neural Network for Solving Time-Varying QM and QP  Problems and Applications}, 
  year={2020}, 
  volume={50}, 
  number={12}, 
  pages={5106-5118}, 
}
```
