function robot =iLink(x,y,z)
% DH-Paramters Using Peter Corke Robotics toolbox
% Scara robot 
T=ones(4,4);
T(1,4)=x;
T(2,4)=y;
T(3,4)=z;
% Create Link using this code
% L   = Link ( [ Th  d    a   alph])
L(1)=Link([0,0.3,0.3,0]);
L(2)=Link([0,0,0.25,0]);
L(3)=Link([0,0,0,pi,1],'standard');
 L(3).qlim=[0 1];
R=SerialLink(L);
robot=R.ikine(T,'q0' ,[0 0 0], 'mask', [1 1 1 0 0 0] );
R.name=('Robot RRP');
R.plot([robot(1),robot(2),robot(3)])
end