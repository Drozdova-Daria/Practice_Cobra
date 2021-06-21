model = load_model('ecoli_core_model.mat');

growthRates = zeros(21);
for i = 0:20
    for j = 0:20
        model = changeRxnBounds(model,'EX_glc(e)',-i,'b');
        model = changeRxnBounds(model,'EX_o2(e)',-j,'b');
        FBAsolution = optimizeCbModel(model,'max');
        if isnan(FBAsolution.f) == false
            growthRates(i+1,j+1) = FBAsolution.f;
        end
    end
end

surf(growthRates)
pcolor(growthRates)
xlabel('Oxygen uptake rate (mmol 1/gDW*hr)')
ylabel('Glucose uptake rate (mmol 1/gDW*hr)')
zlabel('Grown rate (1/hr)')
