clc; clear all;
load Scaling_models_new.mat  % make sure this mat-file is in same directory
Mw_new = [6.5;7.5];
FM_new = categorical({'ss'; 'th'});
SVT_new = categorical({'triang'; 'asymetriccosine'});
newData = table(Mw_new, FM_new, SVT_new,'VariableNames', {'Mw', 'FM', 'SVT'});
%% Population-level prediction (fixed effects only)
beta = L.Coefficients.Estimate;
log10_L_pop = beta(1) + beta(2) .* Mw_new;
L_pop = 10.^log10_L_pop;
%% Group-level prediction (fixed + random effects)
log10_L_grp = predict(L, newData);
L_grp = 10.^log10_L_grp;
%% Display results
ResultTable = table(Mw_new, FM_new, SVT_new,L_pop, L_grp,'VariableNames', {'Mw','FM',...
    'SVT','L_pop','L_group'});
disp(ResultTable);