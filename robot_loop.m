 clc;
 clear all;
 close all;
% DH-Paramters Using Peter Corke Robotics toolbox
% Create Link using this code
% L   = Link ( [ Th  d    a   alph])
syms q1 q2 q3;

L(1)=Link([0,0.3,0.3,0]);
L(2)=Link([0,0,0.25,0]);
L(3)=Link([0,0,0,pi,1],'standard');
L(3).qlim=[0 1];
robot=SerialLink(L);
robot.name = ('Robot RRP');
for(q1=0 : pi/10 : pi/2)
    for(q2=0 : pi/10 : pi/2)
        for(q3=0: 0.05 : 0.3)
robot.plot ( [ q1 ,q2 ,q3 ]);
robot.fkine([ q1 ,q2 ,q3 ])
        end
    end
end
