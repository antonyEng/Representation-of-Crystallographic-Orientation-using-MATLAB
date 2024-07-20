clear
clc
close all 

% if you want to show any crstal, select x=1, if not select x=0 
x1=1 ;
x2=0 ;
 
Eo=[30,0,0 ] ;
Ex=[65.6,13.1,-48.04]  ;




figure, hold on
if x1==1
text(1,1,5, 'The Crystal coloured in Blue,Euler angles [275,0,90] ', 'Rotation',-0.1,'FontSize',12, 'Color', 'b')
end
if x2==2
text(1,-2.8,4.7, 'The Crystal coloured in Magenta,Euler angles [65.6,13.1,-48.04]     ', 'Rotation',-0.1,'FontSize',12, 'Color', 'm')
end 
view([10 8 5])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% working box %%%%%%%%%%%%%%%%%%%%
% vectors
a = [2 0 0];
b = [0 0 2];
c= [0 3 0];
% starting point
C0 = [0 0 0];
% put vector in a matrix, to make the code more flexible (e.g. more vectors)
V = [a; b;c];
% replicate the starting point for all vectors
C = repmat(C0,size(V,1),1);
% plot
hold on
quiver3(C(:,1),C(:,2),C(:,3),V(:,1),V(:,2),V(:,3),'k-.','LineWidth',2)
hold on
text(1.9,-0.7,-0.1, 'Z-ND', 'Rotation',+5,'FontSize',18, 'Color', '#D95319')
text(-0.1,2.5,0.1, 'X-RD', 'Rotation',+5,'FontSize',18, 'Color', '#77AC30')
text(0.5,0.0,2.1, 'Y-TD', 'Rotation',+5,'FontSize',18, 'Color', '#A2142F')
xlabel('Z-ND'); ylabel('X-RD'); zlabel('Y-TD'); 
hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% working box %%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% all rotations %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
Qx(1,1)  =     cosd(Eo(1,1))* cosd(Eo(1,3))  -       sind(Eo(1,1))*sind(Eo(1,3))*cosd(Eo(1,2))      ;
Qx(1,2)  =     sind(Eo(1,1))*cosd(Eo(1,3))   +       cosd(Eo(1,1))*sind(Eo(1,3))*cosd(Eo(1,2))      ;
Qx(1,3)  =     sind(Eo(1,3))*sind(Eo(1,2))                                                       ;

Qx(2,1)  =     -cosd(Eo(1,1))*sind(Eo(1,3))  -       sind(Eo(1,1))*cosd(Eo(1,3))*cosd(Eo(1,2))       ;
Qx(2,2)  =     -sind(Eo(1,1))*sind(Eo(1,3))  +       cosd(Eo(1,1))*cosd(Eo(1,3))*cosd(Eo(1,2))       ;
Qx(2,3)  =     cosd(Eo(1,3))*sind(Eo(1,2))                                                        ;

Qx(3,1) =      sind(Eo(1,1))*sind(Eo(1,2))                                                        ;
Qx(3,2) =      -cosd(Eo(1,1))*sind(Eo(1,2))                                                       ;
Qx(3,3) =      cosd(Eo(1,2))                                                                     ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% all rotations %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% all rotations %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
Qxx(1,1)  =     cosd(Ex(1,1))* cosd(Ex(1,3))  -       sind(Ex(1,1))*sind(Ex(1,3))*cosd(Ex(1,2))      ;
Qxx(1,2)  =     sind(Ex(1,1))*cosd(Ex(1,3))   +       cosd(Ex(1,1))*sind(Ex(1,3))*cosd(Ex(1,2))      ;
Qxx(1,3)  =     sind(Ex(1,3))*sind(Ex(1,2))                                                       ;

Qxx(2,1)  =     -cosd(Ex(1,1))*sind(Ex(1,3))  -       sind(Ex(1,1))*cosd(Ex(1,3))*cosd(Ex(1,2))       ;
Qxx(2,2)  =     -sind(Ex(1,1))*sind(Ex(1,3))  +       cosd(Ex(1,1))*cosd(Ex(1,3))*cosd(Ex(1,2))       ;
Qxx(2,3)  =     cosd(Ex(1,3))*sind(Ex(1,2))                                                        ;

Qxx(3,1) =      sind(Ex(1,1))*sind(Ex(1,2))                                                        ;
Qxx(3,2) =      -cosd(Ex(1,1))*sind(Ex(1,2))                                                       ;
Qxx(3,3) =      cosd(Ex(1,2))                                                                     ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% all rotations %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







%%%%%%%%%%%%%%%%%%%%%%%%effect of first rotation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Qx1(1,1)  =     cosd(Eo(1,1))     ;
Qx1(1,2)  =     sind(Eo(1,1))     ;
Qx1(1,3)  =     0                                                     ;

Qx1(2,1)  =       - sind(Eo(1,1))  ;
Qx1(2,2)  =     cosd(Eo(1,1))       ;
Qx1(2,3)  =     0                                                       ;

Qx1(3,1) =     0                                                      ;
Qx1(3,2) =    0                                                      ;
Qx1(3,3) =    1                                                                    ;




%%%%%%%%%%%%%%%%%%%%%%%%effect of first rotation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%effect of second  rotation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Qx2(1,1)  =     1      ;
Qx2(1,2)  =     0      ;
Qx2(1,3)  =     0                                                       ;

Qx2(2,1)  =     0       ;
Qx2(2,2)  =     cosd(Eo(1,2))       ;
Qx2(2,3)  =     sind(Eo(1,2))                                                        ;

Qx2(3,1) =     0                                                      ;
Qx2(3,2) =      -sind(Eo(1,2))                                                       ;
Qx2(3,3) =      cosd(Eo(1,2))          ;


%%%%%%%%%%%%%%%%%%%%%%%%effect of second rotation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%effect of Third rotation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Qx3(1,1)  =     cosd(Eo(1,3))     ;
Qx3(1,2)  =    sind(Eo(1,3))      ;
Qx3(1,3)  =     0                ;

Qx3(2,1)  =     -sind(Eo(1,3))    ;
Qx3(2,2)  =     cosd(Eo(1,3))      ;
Qx3(2,3)  =     0                                                      ;

Qx3(3,1) =      0                                                        ;
Qx3(3,2) =      0                                                      ;
Qx3(3,3) =     1      ;

%%%%%%%%%%%%%%%%%%%%%%%%effect of third rotation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% vectors of firxt rotation
vx=[1 ; 0 ;0 ] ;
vy=[0 ;1 ;0] ;
vz=[0 ; 0 ;1 ] ;

Q1=transpose(Qx);

VX=Q1*vx ;
VY=Q1*vy ;
VZ=Q1*vz ;

T=[ 0 0 1 ; 1 0 0 ; 0 1 0 ]; 
%T=[1 0 0 ; 0 1 0 ; 0 0 1 ]; 

v_S1=[VX(1,1) ; VX(2,1) ;VX(3,1)]; 
v_S2=[ VY(1,1) ;VY(2,1) ;VY(3,1)]; 
v_S3=[ VZ(1,1); VZ(2,1) ;VZ(3,1)]; 
v_S4=[v_S3(1,1)+v_S1(1,1) ;v_S3(2,1)+v_S1(2,1) ;v_S3(3,1)+v_S1(3,1) ]; 
v_S5=[v_S2(1,1)+v_S1(1,1) ;v_S2(2,1)+v_S1(2,1) ;v_S2(3,1)+v_S1(3,1) ]; 
v_S6=[v_S2(1,1)+v_S3(1,1) ;v_S2(2,1)+v_S3(2,1) ;v_S2(3,1)+v_S3(3,1) ]; 
v_S7=[v_S2(1,1)+v_S3(1,1)+v_S1(1,1) ;v_S2(2,1)+v_S3(2,1)+v_S1(2,1) ;v_S2(3,1)+v_S3(3,1)+v_S1(3,1) ]; 

v_M1=T*v_S1 ;
v_M2=T*v_S2 ;
v_M3=T*v_S3 ;
v_M4=T*v_S4 ;
v_M5=T*v_S5 ;
v_M6=T*v_S6 ;
v_M7=T*v_S7 ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% vectors of firxt rotation

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% vectors of second rotation
vxx=[1 ; 0 ;0 ] ;
vyx=[0 ;1 ;0] ;
vzx=[0 ; 0 ;1 ] ;

Q1x=transpose(Qxx);

VXx=Q1x*vxx ;
VYx=Q1x*vyx ;
VZx=Q1x*vzx ;

T=[ 0 0 1 ; 1 0 0 ; 0 1 0 ]; 
%T=[1 0 0 ; 0 1 0 ; 0 0 1 ]; 

v_S1x=[VXx(1,1) ; VXx(2,1) ;VXx(3,1)]; 
v_S2x=[ VYx(1,1) ;VYx(2,1) ;VYx(3,1)]; 
v_S3x=[ VZx(1,1); VZx(2,1) ;VZx(3,1)]; 
v_S4x=[v_S3x(1,1)+v_S1x(1,1) ;v_S3x(2,1)+v_S1x(2,1) ;v_S3x(3,1)+v_S1x(3,1) ]; 
v_S5x=[v_S2x(1,1)+v_S1x(1,1) ;v_S2x(2,1)+v_S1x(2,1) ;v_S2x(3,1)+v_S1x(3,1) ]; 
v_S6x=[v_S2x(1,1)+v_S3x(1,1) ;v_S2x(2,1)+v_S3x(2,1) ;v_S2x(3,1)+v_S3x(3,1) ]; 
v_S7x=[v_S2x(1,1)+v_S3x(1,1)+v_S1x(1,1) ;v_S2x(2,1)+v_S3x(2,1)+v_S1x(2,1) ;v_S2x(3,1)+v_S3x(3,1)+v_S1x(3,1) ]; 

v_M1x=T*v_S1x ;
v_M2x=T*v_S2x ;
v_M3x=T*v_S3x ;
v_M4x=T*v_S4x ;
v_M5x=T*v_S5x ;
v_M6x=T*v_S6x ;
v_M7x=T*v_S7x ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% vectors of second rotation











hold on


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Initial Crystal Orientation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if x1==1
plot3([0 v_M1(1,1)], [0 v_M1(2,1)], [0 v_M1(3,1)],'--o',  'Color', '#77AC30','LineWidth',2)
hold on
hold on
plot3([0 v_M2(1,1)], [0 v_M2(2,1)], [0 v_M2(3,1)] ,'--o',  'Color', '#A2142F','LineWidth',2)
hold on
plot3([0 v_M3(1,1)], [0 v_M3(2,1)], [0 v_M3(3,1)] ,'--o',  'Color', '#D95319','LineWidth',2)
hold on
plot3([v_M3(1,1) v_M4(1,1)], [v_M3(2,1) v_M4(2,1)], [v_M3(3,1) v_M4(3,1)], 'bo-')
hold on
plot3([v_M4(1,1) v_M1(1,1)], [v_M4(2,1) v_M1(2,1)], [v_M4(3,1) v_M1(3,1)], 'bo-')
hold on
plot3([v_M2(1,1) v_M5(1,1)], [v_M2(2,1) v_M5(2,1)], [v_M2(3,1) v_M5(3,1)], 'bo-')
hold on
plot3([v_M5(1,1) v_M1(1,1)], [v_M5(2,1) v_M1(2,1)], [v_M5(3,1) v_M1(3,1)], 'bo-')
hold on
plot3([v_M2(1,1) v_M6(1,1)], [v_M2(2,1) v_M6(2,1)], [v_M2(3,1) v_M6(3,1)], 'bo-')
hold on
plot3([v_M6(1,1) v_M3(1,1)], [v_M6(2,1) v_M3(2,1)], [v_M6(3,1) v_M3(3,1)], 'bo-')
hold on
plot3([v_M7(1,1) v_M6(1,1)], [v_M7(2,1) v_M6(2,1)], [v_M7(3,1) v_M6(3,1)], 'bo-')
hold on
plot3([v_M7(1,1) v_M5(1,1)], [v_M7(2,1) v_M5(2,1)], [v_M7(3,1) v_M5(3,1)], 'bo-')
hold on
plot3([v_M7(1,1) v_M4(1,1)], [v_M7(2,1) v_M4(2,1)], [v_M7(3,1) v_M4(3,1)], 'bo-')
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Initial Crystal Orientation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% second matrix    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if x2== 2 
plot3([0 v_M1x(1,1)], [0 v_M1x(2,1)], [0 v_M1x(3,1)],'--o',  'Color', 'g','LineWidth',2)
hold on
hold on
plot3([0 v_M2x(1,1)], [0 v_M2x(2,1)], [0 v_M2x(3,1)] ,'--o',  'Color', 'r','LineWidth',2)
hold on
plot3([0 v_M3x(1,1)], [0 v_M3x(2,1)], [0 v_M3x(3,1)] ,'--o',  'Color', '#EDB120','LineWidth',2)
hold on
plot3([v_M3x(1,1) v_M4x(1,1)], [v_M3x(2,1) v_M4x(2,1)], [v_M3x(3,1) v_M4x(3,1)], 'mo-')
hold on
plot3([v_M4x(1,1) v_M1x(1,1)], [v_M4x(2,1) v_M1x(2,1)], [v_M4x(3,1) v_M1x(3,1)], 'mo-')
hold on
plot3([v_M2x(1,1) v_M5x(1,1)], [v_M2x(2,1) v_M5x(2,1)], [v_M2x(3,1) v_M5x(3,1)], 'mo-')
hold on
plot3([v_M5x(1,1) v_M1x(1,1)], [v_M5x(2,1) v_M1x(2,1)], [v_M5x(3,1) v_M1x(3,1)], 'mo-')
hold on
plot3([v_M2x(1,1) v_M6x(1,1)], [v_M2x(2,1) v_M6x(2,1)], [v_M2x(3,1) v_M6x(3,1)], 'mo-')
hold on
plot3([v_M6x(1,1) v_M3x(1,1)], [v_M6x(2,1) v_M3x(2,1)], [v_M6x(3,1) v_M3x(3,1)], 'mo-')
hold on
plot3([v_M7x(1,1) v_M6x(1,1)], [v_M7x(2,1) v_M6x(2,1)], [v_M7x(3,1) v_M6x(3,1)], 'mo-')
hold on
plot3([v_M7x(1,1) v_M5x(1,1)], [v_M7x(2,1) v_M5x(2,1)], [v_M7x(3,1) v_M5x(3,1)], 'mo-')
hold on
plot3([v_M7x(1,1) v_M4x(1,1)], [v_M7x(2,1) v_M4x(2,1)], [v_M7x(3,1) v_M4x(3,1)], 'mo-')

end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cdata = flipdim( imread('sps.png'), 1 );
cdatar = flipdim( cdata, 3 );
% right
surface([0 0; 0 0], [1 5; 1 5], [2 2; 4 4], ...
    'FaceColor', 'texturemap', 'CData', cdata );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



grid on;






