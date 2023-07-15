# Formation-Control-scheme-of-multiple-Surface-Vessels-with-Model-Predictive-Technique
ICISN 2023
# Abstract
This article studies formation control consideration of cooperative
path following problem in a group of multiple Surface Vehicles (SVs). A pro-
posed formation control protocol that contains optimal control problem in two
subsystems of each SV with Model Predictive Control (MPC) and Approximate/Adaptive
reinforcement Learning (ARL) Controller. The MPC is developed for nonlinear
sub-system of SV with the tracking performance to be guaranteed by considering
an appropriate optimization problem. Moreover, RL control design is carried out
for time-varying sub-system by indirect method. Finally, the proposed control
protocol is demonstrated by simulation result to show the effectiveness of this
control protocol
# Our contributions
As a typical consideration of multiagent systems, the formation control problem multi-
ple Surface Vehicles (SVs) has got much attention from many researchers [1–3]. Stud-
ies in this area are motivated by extending the consideration of each SV with kinematic
and dynamic sub-systems, which implies the challenges in establishing the formation
control. Additionally, due to the difficulties of the unification between trajectory track-
ing control problem and optimal control requirement, almost researches are focused
on Lyapunov stability theory using conventional nonlinear control schemes for single
robotic system as well as multiple robotics. Compared with previous references [1–3]
implementing Back-stepping technique for multiple SVs, this article extends the con-
sideration of optimal control problem as well as the unification with trajectory tracking
control effectiveness. Moreover, unlike the related references only consider MPC as
well as RL based optimal control [4–6], the advantages of the proposed control frame-
work in this article are shown that optimal control performance is satisfied not only in
kinematic sub-system with MPC but also in dynamic model by RL strategy. The orga-
nization of this article is given as follows. The preliminary and problem statement are
discussed in Section 2. In Section 3, the formation control structure is proposed with the
combination between three control loops. In Section 4, the simulation implementations
are given to illustrate.

![agent](https://github.com/VuManhHung307201/Formation-Control-scheme-of-multiple-Surface-Vessels-with-Model-Predictive-Technique/assets/106971509/a39f0ae8-3c82-49f8-9f80-779b15416115)
![fig1](https://github.com/VuManhHung307201/Formation-Control-scheme-of-multiple-Surface-Vessels-with-Model-Predictive-Technique/assets/106971509/6a634b7f-1de4-42ee-a7b6-cb07832ae72f)
