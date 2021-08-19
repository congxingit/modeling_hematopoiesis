
close all 
clear

arInit;

arLoadModel('model_ageing');


arLoadData('lf_cs_epcr_old')

arLoadData('lf_norm_old_BM');

arLoadData('cs_norm_old_BM');

arLoadData('h2b_gfp_old');

arLoadData('lf_norm_old_mye');



arCompileAll;

ar.config.fiterrors=-1;


% Load parameters of the best fit
arLoadPars('best_fit_with_PLE')

arPrint

arPlotter

%% Run the following commands to visualize the profile likelihood for the parameters.
% 
% arLoad('best_fit_with_PLE')
% 
% plePlotMulti
% 
% plePrint





