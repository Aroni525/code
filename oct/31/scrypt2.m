clc
clear all
N=100;
fc=0.25;
bw=0.1;
  [a,b]=narrow_bf(fc,bw);
  d1=imp_resp(b,a,N);
  figure(1)
  subplot(2,3,1);
  plot(d1)
  title('imp-bf')
  d2=step_resp(b,a,N);
  subplot(2,3,2);
  plot(d2)
  title('step-bf')
  [mH,fH,mHdB]=freq_resp(b,a,N);
  subplot(2,3,3);
  plot(mH)
  title('mh-bf')
  subplot(2,3,5);
  plot(fH)
  title('fh-bf')
  subplot(2,3,4);
  plot(mHdB)
  title('mHdB-bf')
  
[a,b]=narrow_nf(fc,bw);
d1=imp_resp(b,a,N);
figure(2)
subplot(2,3,1);
plot(d1)
title('imp-nf')
d2=step_resp(b,a,N);
subplot(2,3,2);
plot(d2)
title('step-nf')
[mH,fH,mHdB]=freq_resp(b,a,N);
subplot(2,3,3);
plot(mH)
title('mh-nf')
subplot(2,3,5);
plot(fH)
title('fh-nf')
subplot(2,3,4);
plot(mHdB)
title('mHdB-nf')

  [a,b]=onepole_HPF(fc)
  d1=imp_resp(b,a,N);
  figure(3)
  subplot(2,3,1);
  plot(d1)
  title('imp-HPF')
  d2=step_resp(b,a,N);
  subplot(2,3,2);
  plot(d2) 
  title('step-HPF')
  [mH,fH,mHdB]=freq_resp(b,a,N);
  subplot(2,3,3);
  plot(mH)
  title('mH-HPF')
  subplot(2,3,5);
  plot(fH)
  title('fH-HPF')
  subplot(2,3,4);
  plot(mHdB)
  title('mHdB-HPF')

  [a,b]=onepole_LPF(fc);
  d1=imp_resp(b,a,N);
  figure(4)
  subplot(2,3,1);
  plot(d1)
  title('imp-LPF')
  d2=step_resp(b,a,N);
  subplot(2,3,2);
  plot(d2) 
  title('step-LPF')
  [mH,fH,mHdB]=freq_resp(b,a,N);
  subplot(2,3,3);
  plot(mH)
  title('mH-LPF')
  subplot(2,3,5);
  plot(fH)
  title('fH-LPF')
  subplot(2,3,4);
  plot(mHdB)
  title('mHdB-LPF')