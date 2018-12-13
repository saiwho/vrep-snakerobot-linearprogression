# Snake robot corkscrewing gait implementation
This repository is for simulation of linearprogression gait for snake robot in vrep environment. 

# Preview
![screenshot 824](https://user-images.githubusercontent.com/32405791/47342032-42f1ae00-d6c0-11e8-9b0c-e4e63838ba33.png)

# Prerequisites (dependencies)
  
  **Matlab/Octave Installation**
  
  MATLAB (matrix laboratory) is a multi-paradigm numerical computing environment and proprietary programming language developed   by MathWorks. MATLAB allows matrix manipulations, plotting of functions and data, implementation of algorithms, creation of     user interfaces, and interfacing with programs written in other languages, including C, C++, C#, Java, Fortran and Python.

  Matlab can be found in the Products section of the [Mathworks website](https://in.mathworks.com/?s_tid=gn_logo)
  
  **V-REP Installation**
  
  The robot simulator V-REP, with integrated development environment, is based on a distributed control architecture: each       object/model can be individually controlled via an embedded script, a plugin, a ROS or BlueZero node, a remote API client, or   a custom solution. This makes V-REP very versatile and ideal for multi-robot applications. Controllers can be written in C/C++, Python, Java, Lua, Matlab or Octave.
  
  V-REP can be found in the Downloads section of the [Coppelia Robotics website(http://www.coppeliarobotics.com/downloads.html)
  
# Matlab and V-REP communication
  
  **[1]** Add `simExtRemoteApiStart(19999)` inside the `if (sim_call_type == sim_childscriptcall_initialization then)` in the child script of the one of the objects in the V-REP scene and save the scene.
  
  **[2]** Copy the remApi.m, remoteApi.dll, remoteApiProto.m, simpleTest.m to the same folder where the scene is saved.
         
         remApi.m, remoteApiProto.m, simpleTest.m can be found in the Program Files/V-REP3/V-REP_PRO_EDU/programming/remoteApiBindings/matlab/matlab
          
          remoteApi.dll can be found in Program Files/V-REP3/V-REP_PRO_EDU/programming/remoteApiBindings//lib/lib/64bit or 32 bit depending on your system.
          
  **[3]** Now open the simpleTest.m to check whether the connection is established between the V-REP and MAtlab.
  
  **[4]** Now write your own program inside the `if (clientID>-1) condition` of the `simpleTest.m` file using Matlab V-REP Api functions to simulate the robot in the scene.
  
  
  
# Steps to run the Simulation
  
 Run the V-REP Simulator and then run the `SnakeRobot_sim.m`
 
 Change the code in the `SnakeRobot_sim.m` inside the `if (clientID>-1) condition` for different snake motions. 
 
# References

  **[1]** SNAKE ROBOTS CAN USE THEIR MANY INTERNAL DEGREES OF FREEDOM TO THREAD THROUGH TIGHTLY PACKED VOLUMES ACCESSING LOCATIONS THAT   PEOPLE AND MACHINERY OTHERWISE CANNOT USE.[CMU Biorobotics](http://biorobotics.ri.cmu.edu/projects/modsnake/).
  
  **[2]** Rohan Thakker, Ajinkya Kamat, Sachin Bharambe, Shital Chiddarwar, KM Bhurchandi, `ReBiS-Reconfigurable Bipedal Snake robot`, in Intelligent Robots and Systems (IROS 2014), 2014 IEEE/RSJ International Conference. [link](http://www.ivlabs.in/uploads/5/1/1/3/51135457/06942577.pdf) 
  
  **[3]** Xuesu Xiao, Ellen Cappo, Weikun Zhen, Jin Dai, Ke Sun, Chaohui Gong, Matthew J. Travers
and Howie Choset2, `Locomotive Reduction for Snake Robots`, in 2015 IEEE International Conference on Robotics and Automation, (ICRA). [link](http://biorobotics.ri.cmu.edu/papers/paperUploads/3367.pdf)
  
  **[4]** G.S.P. Miller. [web](www.snakerobots.com)
  
  **[5]** Hopkins JK1, Spranklin BW, Gupta SK, `A survey of snake-inspired robot designs`, in Bionispiration and Biomimetics, 4(2):021001, 2009. [link](http://ruk.usc.edu/bio/gupta/BB09_Hopkins_draft.pdf)
  
  **[6]** Cornell Wright, Aaron Johnson, Aaron Peck, Zachary McCord,Allison Naaktgeboren, Philip Gianfortoni, Manuel Gonzalez-Rivero, Ross Hatton, and Howie Choset. ―Design of a Modular Snake Robot.‖ In Proceedings of the 2007 IEEE/RSJ International Conference on Intelligent Robots and Systems, 2007 
  
  **[7]** V-REP Pro Edu [link](http://www.coppeliarobotics.com/downloads.html)
    
@*saipothanjanjanam*

