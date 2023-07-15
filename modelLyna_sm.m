clear all; clc;
nx = 3;
ny = 3;
nu = 3;
nd = 0;
tt = [1:1:nu]; td = [nu+1:1:nu+nd];
nlobj = nlmpc(nx,ny,'MV',[1 2 3]);
%--------------------------------------------------------------------------
Ts = 0.5;
PredictionHorizon = 10;
nlobj.Ts = Ts;
nlobj.PredictionHorizon = PredictionHorizon;
nlobj.ControlHorizon = PredictionHorizon;
%---------------------------Plant Model-----------------------------------------------
nlobj.Model.StateFcn = @robot_model;
nlobj.Model.OutputFcn = @modelOutputFcn;
%---------------------------Cost Fcn--------------------------------------
nlobj.Weights.OutputVariables = [50 50 25];
nlobj.Weights.ManipulatedVariables = [0.1 0.1 0.2];
%---------------------------Constraints--------------------------------------
nlobj.Optimization.CustomIneqConFcn = @myIneqConFunction;
%--------------------------Optimization Specification------------------------------------------------
nlobj.Optimization.SolverOptions.Algorithm = 'sqp';
nlobj.Optimization.SolverOptions.MaxIterations = 400;
nlobj.Optimization.SolverOptions.StepTolerance = 1e-6;
nlobj.Optimization.SolverOptions.ConstraintTolerance = 1e-6;
nlobj.Optimization.SolverOptions.OptimalityTolerance = 1e-6;
%------------------------------------------------------------------
x0 = [0;0;0];
u0 = [0;0;0];
validateFcns(nlobj,x0,u0,[]);


