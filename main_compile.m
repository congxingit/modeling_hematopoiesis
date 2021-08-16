%% Initiating and compiling the model and experimental data

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


%% Parameter range setting

arSetPars('a_1hh',log10(1e-8+rand*(0.1-1e-8)), [], [], -8, log10(0.1))
arSetPars('a_2hh',log10(1e-8+rand*(0.1-1e-8)), [], [], -8, log10(0.1))
arSetPars('a_3hh',log10(1e-8+rand*(0.1-1e-8)), [], [], -8, log10(0.1))

arSetPars('a_1hl',log10(1e-8+rand*(0.1-1e-8)), [], [], -8, log10(0.1))
arSetPars('a_2hl',log10(1e-8+rand*(0.1-1e-8)), [], [], -8, log10(0.1))
arSetPars('a_3hl',log10(1e-8+rand*(0.1-1e-8)), [], [], -8, log10(0.1))

arSetPars('a_2lh',log10(1e-8+rand*(0.1-1e-8)), [], [], -8, log10(0.1))
arSetPars('a_3lh',log10(1e-8+rand*(0.1-1e-8)), [], [], -8, log10(0.1))

arSetPars('a_2ll',log10(1e-8+rand*(0.1-1e-8)), [], [], -8, log10(0.1))
arSetPars('a_3ll',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))


arSetPars('a_4hcm',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))
arSetPars('a_4hcl',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))
arSetPars('a_4lcm',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))
arSetPars('a_4lcl',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))

arSetPars('a_cmp_mep',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(4))
arSetPars('a_cmp_gmp',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(4))

arSetPars('a_2l_mkp1',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(4))
arSetPars('a_cmp_mkp2',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(4))

arSetPars('a_mkp1',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(4))
arSetPars('a_mkp2',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(4))

arSetPars('a_p',[], 1, [], -8, log10(4))
arSetPars('aa_e',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(40))
arSetPars('aa_g',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(40))

arSetPars('cu_1hh',0,0,0)
arSetPars('cu_2hh',0,0,0)
arSetPars('cu_3hh',0,0,0)

arSetPars('cu_1hl',0,0,0)
arSetPars('cu_2hl',0,0,0)
arSetPars('cu_3hl',0,0,0)

arSetPars('cu_2lh',0,0,0)
arSetPars('cu_3lh',0,0,0)

arSetPars('cu_2ll',0,0,0)
arSetPars('cu_3ll',0,0,0)

arSetPars('cu_2l_mkp1',0,0,0)

arSetPars('cu_4hcm',0,0,0)
arSetPars('cu_4hcl',0,0,0)
arSetPars('cu_4lcm',0,0,0)
arSetPars('cu_4lcl',0,0,0)

arSetPars('cu_mkp1',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))
arSetPars('cu_mkp2',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))

arSetPars('q_2h',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))
arSetPars('q_3h',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))
arSetPars('q_4h',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))
arSetPars('q_2l',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))
arSetPars('q_3l',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))
arSetPars('q_4l',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))



arSetPars('l_1h',log10(1e-8+rand*(0.1-1e-8)), [], [], -8, log10(0.1))
arSetPars('l_2h',log10(1e-8+rand*(0.5-1e-8)), [], [], -8, log10(0.5))
arSetPars('l_3h',log10(1e-8+rand*(0.5-1e-8)), [], [], -8, log10(0.5))
arSetPars('l_4h',log10(1e-8+rand*(0.5-1e-8)), [], [], -8, log10(0.5))

arSetPars('l_2l',log10(1e-8+rand*(0.5-1e-8)), [], [], -8, log10(0.5))
arSetPars('l_3l',log10(1e-8+rand*(0.5-1e-8)), [], [], -8, log10(0.5))
arSetPars('l_4l',log10(1e-8+rand*(0.5-1e-8)), [], [], -8, log10(0.5))

arSetPars('l_mkp1',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))
arSetPars('l_mkp2',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(1))

arSetPars('l_cmp',log10(1e-8+rand*(1-1e-8)), [], [], -8, log10(4))


arSetPars('d_1h',log10(1e-8+rand*(0.1-1e-8)), [], [], -8, log10(0.1))
arSetPars('d_2h',log10(1e-8+rand*(0.2-1e-8)), [], [], -8, log10(0.2))
arSetPars('d_3h',log10(1e-8+rand*(0.2-1e-8)), [], [], -8, log10(0.2))
arSetPars('d_4h',log10(1e-8+rand*(0.2-1e-8)), [], [], -8, log10(0.2))
arSetPars('d_2l',log10(1e-8+rand*(0.2-1e-8)), [], [], -8, log10(0.2))
arSetPars('d_3l',log10(1e-8+rand*(0.2-1e-8)), [], [], -8, log10(0.2))
arSetPars('d_4l',log10(1e-8+rand*(0.2-1e-8)), [], [], -8, log10(0.2))
arSetPars('d_cmp',0,0,0)
arSetPars('d_plt',log10(log(2)/5),0)
arSetPars('g_d_mkp2',0, 0, 1, log10(0.1), log10(10))

arSetPars('k_cl',log10(1e-8+rand*(4-1e-8)), [], [], -8, log10(4))
arSetPars('k_mep',log10(1e-8+rand*(4-1e-8)), [], [], -8, log10(4))
arSetPars('k_gmp',log10(1e-8+rand*(4-1e-8)), [], [], -8, log10(4))


arSetPars('k',log10(log(2)/42),0)

arSetPars('v',[], [], [], -5, 1)

arSetPars('init_x1h',2, [], [], 1, log10(500))
arSetPars('init_x2h',2, [], [], 1, log10(500))
arSetPars('init_x3h',2, [], [], 1, log10(500))
arSetPars('init_x4h',2, [], [], 1, log10(500))
arSetPars('init_x2l',2, [], [], 1, log10(500))
arSetPars('init_x3l',2, [], [], 1, log10(500))
arSetPars('init_x4l',2, [], [], 1, log10(500))
arSetPars('init_xcmp',2, 0)
arSetPars('init_xcmp1',2, 0)
arSetPars('init_xcmp2',2, 0)
arSetPars('init_xmkp1',2, 0)


arSetPars('g_init_f2h',-1, [], [], -8, 0)
arSetPars('g_init_f2l',-1, [], [], -8, 0)
arSetPars('init_rgmp',[], [], [], -3, log10(1))
arSetPars('init_rmep',[], [], [], -3, log10(1))
arSetPars('g_init_xmkp2',log10(1),0)
arSetPars('init_r_mkp2_cmp',log10(1/2), [], [], -8, log10(1))
arSetPars('init_r_mkp1_2l',log10(1), [], [], log10(0.01), log10(100))
arSetPars('init_r_mk_mkp1',log10(10), 1, [],0, 5)
arSetPars('num_n1h',4, [], [], 0, 6)
arSetPars('init_r2',1, [], [], 0, 3)
arSetPars('init_r3',1, [], [], 0, 3)
arSetPars('init_r4',1, [], [], 0, 3)
arSetPars('init_rcm',1, [], [], 0, 3)
arSetPars('init_rcl',1, [], [], 0, 3)
arSetPars('init_r_plt',1, [], [], 0, 6)

arSetPars('Amp',1, [], [], 0, 6)


% best model setting
arSetPars('a_4hcm',0,0,0)
arSetPars('a_4lcl',0,0,0)

arSetPars('a_2lh',0,0,0,-1,1)
arSetPars('a_3lh',0,0,0,-1,1)

arSetPars('q_2l',0,0,0)
arSetPars('q_3l',0,0,0)
arSetPars('q_4l',0,0,0)




%% Model fitting with multiple parameter initial values that are generated by Latin Cubic sampling.

% The value 10 is for demonstration, and larger number is required for searching for the best fit
n=10;  

arFitLHS(n)






