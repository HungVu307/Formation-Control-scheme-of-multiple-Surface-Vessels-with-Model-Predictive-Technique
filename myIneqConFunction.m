function cineq = myIneqConFunction(X,U,e,data)
p = data.PredictionHorizon;
Ts = data.Ts;
U1 = U(1:p,data.MVIndex(1));
U2 = U(1:p,data.MVIndex(2));
U3 = U(1:p,data.MVIndex(3));
X1 = X(2:p+1,1);
X2 = X(2:p+1,2);
X3 = X(2:p+1,3);
%-----------------------------------------------------------------------
Umax =  5000; 
Xmax=1000;
Smax=5;
cineq = [U1-Umax;
    U2-Umax;
    U3-Umax;
    -U1-Umax;
    -U2-Umax;
    -U3-Umax;
    X1-Xmax; X2-Xmax;X3-Smax;
     -X1-Xmax;-X2-Xmax;-X3-Smax;];
end