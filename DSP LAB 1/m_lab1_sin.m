clc
clear

%% For Generation 2v p-p sin wave
tstart = 0;
tend = 2;
sampling_period = 0.01;

t = tstart : sampling_period : tend;
x = sin(8*pi*t);

figure(1);
plot(t,x);
title('Sin Wave Generating');
saveas(gcf,'sin1_generation.png');

%% Sampling Of sin Wave

figure(2);
stem(x);
title('Sin Wave Sampling');
saveas(gcf,'sin1_sampling.png');

%% Reconstruction of sin Wave

reconstruction_start_time = 0;
reconstruction_end_time = 1;
reconstruction_sampling_time = 0.01;

new_time = reconstruction_start_time : reconstruction_sampling_time : reconstruction_end_time;
f = interp1(t,x,new_time);
figure(3);
plot(new_time,f);
title('Sin Wave Reconstructing');
saveas(gcf,'sin1_reconstruction.png');