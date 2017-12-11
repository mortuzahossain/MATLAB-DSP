clc
clear

%% For Generation 10v p-p cos wave
tstart = 0;
tend = 5;
sampling_period = 0.1;

t = tstart : sampling_period : tend;
x = 5*cos(4*pi*t);
figure(1);
plot(t,x);
title('Cos Wave Generating');
%saveas(gcf,'cos1_generation.png');

%% Sampling Of Cos Wave
figure(2);
stem(x);
title('Cos Wave Sampling');
%saveas(gcf,'cos1_sampling.png');

%% Reconstruction of cos Wave

reconstruction_start_time = 0;
reconstruction_end_time = 2;
reconstruction_sampling_time = 0.1;

new_time = reconstruction_start_time : reconstruction_sampling_time : reconstruction_end_time;
f = interp1(t,x,new_time);
figure(3);
plot(new_time,f);
title('Cos Wave Reconstruction');
%saveas(gcf,'cos1_reconstruction.png');
