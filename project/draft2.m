%aTfull = [aTm;aTp;aTr;aTt];
%save('ataxicTrainFull.mat','aTfull');
%clear all


%fTfull = [aTfull;llTfull;nTfull;sdTfull;sTfull];
%save('featuresTrainFull.mat','fTfull');
%clear all

%random_fTfull = fTfull(randperm(size(fTfull, 1)), :);

%x = 0.01:0.01:1.50;
%plot(x,accvar(:,1:150),'linewidth',1);
%navr = [];
%%for i = 1:28
    %navr = [navr mean(nTfull(:,i))];
    %nstdv = [nstdv std(nTfull(:,i))];
%end

%fTfullnor = [aTfullnor;llTfullnor;nTfullnor;sdTfullnor;sTfullnor];
%save('featuresTrainFullNormalized.mat','fTfullnor');

%random_fTfullnor = fTfullnor(randperm(size(fTfullnor, 1)), :);
%save('featuresTrainFullNormalizedRand.mat','random_fTfullnor');