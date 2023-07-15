function z_out = robot_model(x,u)
%x=x(1);
%y=x(2);
%theta=x(3);
dxdt=x;
dxdt(1)=u(1)*cos(x(3))-u(2)*sin(x(3));
dxdt(2)=u(1)*sin(x(3))+u(2)*cos(x(3));
dxdt(3)=u(3);
z_out=dxdt;
end