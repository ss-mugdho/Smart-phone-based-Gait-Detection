sdavr = [];
sdstdv = [];
for i = 1:28
    sdavr = [sdavr mean(sdTfull(:,i))];
    sdstdv = [sdstdv std(sdTfull(:,i))];
end

sdTfullnor = [];
type = [];
col = [];
for i = 1:28
    col = (sdTfull(:,i) - mean(sdTfull(:,i)))./std(sdTfull(:,i));
    sdTfullnor = [sdTfullnor col];
end
for i = 1:length(sdTfull)
   type = [type;0];
end
sdTfullnor = [sdTfullnor type];
save('standingTrainFullNormalized.mat','sdTfullnor');
save('standingmeans.mat','sdavr');
save('standingstandardDivs.mat','sdstdv');
clear all
