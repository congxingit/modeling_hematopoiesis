% Initiating and compiling the model and experimental data

close all 
clear all

arInit;

arLoadModel('model_unperturbed');


arLoadData('lf_cs_epcr')

arLoadData('lf_norm_BM');

arLoadData('cs_norm_BM');

arLoadData('h2b_gfp');

arLoadData('lf_norm_mye');

arLoadData('lf_norm_young_BM');

arLoadData('cs_norm_young');

arLoadData('h2b_gfp_you');

arLoadData('lf_norm_young_mye');

arLoadData('init_num_es_hsc');

arLoadData('mkp_plt_num_tpo_ctrl');


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

