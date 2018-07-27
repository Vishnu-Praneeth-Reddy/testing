clear all
clc

%256 QAM 8X8
snr_0 = [1,5,10,15,20,25,30,35,38,40,45,50];
ber_0 = [0.41788,0.39642,0.35814,0.3112,0.24906,0.18647,0.08607,0.034141,0.018031,0.014,0.00556,0.0028125];
ber_ = smooth(ber_0);
figure 
grid on

semilogy(snr_0,ber_,'g-*','LineWidth',2); 
grid on
xlabel('SNR dB', 'fontsize', 18);
ylabel('Bit Error Ratio', 'fontsize', 18);
title('BER vs SNR - 256-QAM 8X8 MIMO Detector (K = 5)', 'fontsize', 18);
xlim([1 55]);
ylim([0.001 1]);

hold on

%1024QAM 8X8
snr_1 = [1,5,10,15,20,25,30,35,38,40,45,50];
ber_1 = [0.43109,0.41116,0.38027,0.34356,0.28921,0.23511,0.18319,0.10831,0.063238,0.038312,0.0173,0.0051125];
ber_ = smooth(ber_1);
semilogy(snr_1,ber_,'b-*','LineWidth',2);

%256 QAM 100X100
snr_2 = [1,5,10,15,20,25,30,35,38,40,45,50];
ber_2 = [0.43145,0.41696,0.39899,0.37827,0.34599,0.3004,0.24587,0.17914,0.10786,0.056546,0.0027587,0.0015075];
ber_ = smooth(ber_2);
semilogy(snr_2,ber_,'r-*','LineWidth',2);

hold off

legend('256-QAM (8X8)', '1024-QAM (8X8)', '256-QAM (100X100)');