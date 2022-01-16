setup;
load('main_even_struct.mat');
[results,denoiseddata] = GLMdenoisedata(design,data,stimdur,tr,'assume',[],[],'main_even_figures');
modelmd=getfield(results,'modelmd');
modelse=getfield(results,'modelse');
save('/moto/home/wg2361/human-face-fmri/main_even_modelmd.mat', 'modelmd');
save('/moto/home/wg2361/human-face-fmri/main_even_modelse.mat', 'modelse');