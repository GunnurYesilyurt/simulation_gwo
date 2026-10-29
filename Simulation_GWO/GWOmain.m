%___________________________________________________________________%
%  Grey Wolf Optimizer (GWO) source codes version 1.0               %
%                                                                   %
%  Developed in MATLAB R2011b(7.13)                                 %
%                                                                   %
%  Author and programmer: Seyedali Mirjalili                        %
%                                                                   %
%         e-Mail: ali.mirjalili@gmail.com                           %
%                 seyedali.mirjalili@griffithuni.edu.au             %
%                                                                   %
%       Homepage: http://www.alimirjalili.com                       %
%                                                                   %
%   Main paper: S. Mirjalili, S. M. Mirjalili, A. Lewis             %
%               Grey Wolf Optimizer, Advances in Engineering        %
%               Software , in press,                                %
%               DOI: 10.1016/j.advengsoft.2013.12.007               %
%                                                                   %
%                                                                   %
%  Adapted and integrated into IEEE 123-Bus ESS Optimization        %
%  Project by Gunnur Yesilyurt.                                     %                           %
%___________________________________________________________________%

% You can simply define your cost in a seperate file and load its handle to fobj 
% The initial parameters that you need are:
%__________________________________________
% fobj = @YourCostFunction
% dim = number of your variables
% Max_iteration = maximum number of generations
% SearchAgents_no = number of search agents
% lb=[lb1,lb2,...,lbn] where lbn is the lower bound of variable n
% ub=[ub1,ub2,...,ubn] where ubn is the upper bound of variable n
% If all the variables have equal lower bound you can just
% define lb and ub as two single number numbers

% To run GWO: [Best_score,Best_pos,GWO_cg_curve]=GWO(SearchAgents_no,Max_iteration,lb,ub,dim,fobj)
%__________________________________________


function [SoC, P] = GWOmain(SoC, DSSCircuit, DSSText, ii)


pvirrad = ...
[0 0 0 0 0 0 0 0 0.064 0.219 0.369 0.512 0.598 0.582 0.509 0.411 0.25 0.041 0 0 0 0 0 0 ...
0 0 0 0 0 0 0.006 0.127 0.285 0.435 0.612 0.638 0.67 0.653 0.633 0.61 0.411 0.21 0.062 0 0 0 0 0 ...
0 0 0 0 0 0 0.014 0.127 0.327 0.503 0.632 0.715 0.752 0.747 0.7 0.607 0.469 0.29 0.1 0.007 0 0 0 0 ...
0 0 0 0 0 0 0 0 0.073 0.11 0.162 0.399 0.486 0.516 0.53 0.51 0.338 0.072 0 0 0 0 0 0];


load_mult = [0.4757 0.4473 0.426 0.4189 0.4189 0.426 0.5254 0.6106 0.6745 0.6816 0.6816 0.6745 0.6745 0.6745 0.6603 0.6674 0.7029 0.71 0.71 0.6816 0.6461 0.5893 0.5183 0.4473 0.3969 0.3906 0.378 0.3654 0.3717 0.4095 0.4536 0.5355 0.5985 0.6237 0.63 0.6237 0.5859 0.5796 0.567 0.5544 0.567 0.5796 0.6048 0.6174 0.6048 0.567 0.504 0.441 0.64 0.6 0.58 0.56 0.56 0.58 0.64 0.76 0.87 0.95 0.99 1 0.99 1 1 0.97 0.96 0.96 0.93 0.92 0.92 0.93 0.87 0.72 0.3717 0.3658 0.354 0.3422 0.3481 0.3835 0.4248 0.5015 0.5605 0.5841 0.59 0.5841 0.5487 0.5428 0.531 0.5192 0.531 0.5428 0.5664 0.5782 0.5664 0.531 0.472 0.413];


SearchAgents_no=30;
Max_iteration=10;
dim = 15; % single phase storages number
fobj = @fobj1;

% Load details of the selected benchmark function
%[lb,ub,dim,fobj]=Get_Functions_details(Function_name);

lb = ones(1, dim).*-50;
ub = ones(1, dim).*50;

for strnum = 1:dim
    a = SoC(ii, strnum) + ub(strnum);
    while a>1600
        ub(strnum) = ub(strnum) - 1;
        a = SoC(ii, strnum) + ub(strnum);
    end

    b = SoC(ii, strnum) + lb(strnum);
    while b < 400
        lb(strnum) = lb(strnum) + 1;
        b = SoC(ii, strnum) + lb(strnum);
    end
       
end

if pvirrad(ii) >= 0.5
    lb(1, :) = 0;
end

if load_mult(ii) >= 0.8
    ub(1, :) = 0;
end



[~ ,Best_pos, ~]=GWO(SearchAgents_no,Max_iteration,lb,ub,dim,fobj, DSSCircuit, DSSText);

SoC = adjuststr_with_bestscore(SoC, Best_pos, DSSText, ii);

P(1, :) = Best_pos(1, :);





%{
figure('Position',[500 500 660 290])
%Draw search space
subplot(1,2,1);
func_plot(Function_name);
title('Parameter space')
xlabel('x_1');
ylabel('x_2');
zlabel([Function_name,'( x_1 , x_2 )'])

%Draw objective space
subplot(1,2,2);
semilogy(GWO_cg_curve,'Color','r')
title('Objective space')
xlabel('Iteration');
ylabel('Best score obtained so far');

axis tight
grid on
box on
legend('GWO')

display(['The best solution obtained by GWO is : ', num2str(Best_pos)]);
display(['The best optimal value of the objective funciton found by GWO is : ', num2str(Best_score)]);

%}
        
end


