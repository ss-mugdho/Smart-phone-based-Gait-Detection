clc;
set_param('predct1','SimulationCommand','Start');
block = 'predct1/UDP1';
rto = get_param(block, 'RuntimeObject');
load('trainedModel3.mat');
setpref('Internet','E_mail','ssmugdho@gmail.com');
setpref('Internet','SMTP_Server','smtp.gmail.com'); 
count = 0;
z = length('abnormal1');
while true
    tic
    feature = rto.OutputPort(1).Data;
    features = [feature'];
    T = table(features);
    y = trainedModel3.predictFcn(T)
    x = length(char(y));
    if x == 9
        count = count+1;
        if count == 3
            sendmail('ssakib4020@gmail.com','fall risk','Mr.X is in a risk of falling.');
            set_param('predct1','SimulationCommand','Stop');
            break
        end
    else
        count = 0;
    end
    pause(1.5-toc);
end
