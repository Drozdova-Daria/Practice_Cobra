model = load_model('ecoli_core_model.mat');

model = changeRxnBounds(model,'EX_glc(e)',0,'l');
model = changeRxnBounds(model,'EX_succ(e)',-20,'l');
FBAsolution = optimizeCbModel(model,'max');
model = changeRxnBounds(model,'Biomass_Ecoli_core_w_GAM',FBAsolution.f,'b');
model = changeObjective(model,'ME1');
FBAsolutionMin = optimizeCbModel(model,'min');
FBAsolutionMax = optimizeCbModel(model,'max');
[min, max] = fluxVariability(model);

% FRD7
[min(44), max(44)]

% MDH
[min(64), max(64)]

% ME1
[min(65), max(65)]

% ME2
[min(66), max(66)]

% NADTRHD
[min(68), max(68)]

% PPCK
[min(80), max(80)]

% PYK
[min(83), max(83)]

% SUCCDi
[min(89), max(89)]
