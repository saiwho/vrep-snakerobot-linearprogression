 disp('Program started'); 
 vrep = remApi('remoteApi');
 vrep.simxFinish(-1);
 clientID = vrep.simxStart('127.0.0.1',19999,true,true,5000,5);
 if (clientID>-1)
     
    % Function Handles
    
    t = 0
    
    [returnCode, verlink1] = vrep.simxGetObjectHandle(clientID, 'snake_joint_v1', vrep.simx_opmode_blocking); 
    [returnCode, verlink2] = vrep.simxGetObjectHandle(clientID, 'snake_joint_v2', vrep.simx_opmode_blocking);
    [returnCode, verlink3] = vrep.simxGetObjectHandle(clientID, 'snake_joint_v3', vrep.simx_opmode_blocking);
    [returnCode, verlink4] = vrep.simxGetObjectHandle(clientID, 'snake_joint_v4', vrep.simx_opmode_blocking);
    
    while 1
     %Snake Code for Linear Progression
     t = t + 1;
     [returnCode] = vrep.simxSetJointTargetPosition(clientID, verlink1,1*sin((1*(3.14*t)/6)+((2*3.14))/3), vrep.simx_opmode_blocking);
     [returnCode] = vrep.simxSetJointTargetPosition(clientID, verlink2,1*sin((1*(3.14*t)/6)+((4*3.14))/3), vrep.simx_opmode_blocking);
     [returnCode] = vrep.simxSetJointTargetPosition(clientID, verlink3,1*sin((1*(3.14*t)/6)+((6*3.14))/3), vrep.simx_opmode_blocking);
     [returnCode] = vrep.simxSetJointTargetPosition(clientID, verlink4,1*sin((1*(3.14*t)/6)+((8*3.14))/3), vrep.simx_opmode_blocking);
      
    end
     
 vrep.simxFinish(-1);
 
 end
 vrep.simxFinish(-1);
 vrep.delete();
 disp('Program ended');
 