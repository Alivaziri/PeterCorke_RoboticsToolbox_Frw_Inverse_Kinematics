function robot = SLink(q1,q2,q3)
% DH-Paramters Using Peter Corke Robotics toolbox
% RRP robot 

% Create Link using this code
% L   = Link ( [ Th  d    a   alph])
L(1)=Link([0,0.3,0.3,0]);
L(2)=Link([0,0,0.25,0]);
L(3)=Link([0,0,0,pi,1],'standard');
L(3).qlim=[0 1];
robot=SerialLink(L);
robot.name = ('RRP robot');
robot.plot ([ q1 ,q2 , q3 ]);
robot.fkine([ q1 ,q2 , q3 ])
end