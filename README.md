# Varying-Parameter RNN
A RNN Model for Solving Time-Varying Control Problems

- [[Paper 1]](https://ieeexplore.ieee.org/document/8589008) (Convergence Analysis)

- [[Paper 2]](https://ieeexplore.ieee.org/document/8463509) (Robustness Analysis)


Introduction
-----
Many practical problems can be solved by being formulated as time-varying quadratic programing (TVQP) problems. In this paper, a novel power-type varying-parameter recurrent neural network (VPNN) is proposed and analyzed to effectively solve the resulting TVQP problems, as well as the original practical problems. For a clear understanding, we introduce this model from three aspects: design, analysis, and applications. Specifically, the reason why and the method we use to design this neural network model for solving online TVQP problems subject to time-varying linear equality/inequality are described in detail. The theoretical analysis confirms that when activated by six commonly used activation functions, VPNN achieves a superexponential convergence rate. In contrast to the traditional zeroing neural network with fixed design parameters, the proposed VPNN has better convergence performance. Comparative simulations with state-of-the-art methods confirm the advantages of VPNN. Furthermore, the application of VPNN to a robot motion planning problem verifies the feasibility, applicability, and efficiency of the proposed method.
