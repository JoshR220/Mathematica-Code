offset=636/2;

V=@(r,belta,re,De)De*(1-exp(-belta*(r-re))).^2;

r=1.5:0.01:10;

r1=1.5:0.01:5;
figure;
% ground PI
hold on
plot(r,V(r,1.3773,1.99,36491),'b')

plot(r1,offset*ones(351,1),'b')
plot(r1,(offset+636)*ones(351,1),'b')
plot(r1,(offset+1263)*ones(351,1),'b')
plot(r1,(offset+1263+636)*ones(351,1),'b')
plot(r1,(offset+1263+2*636)*ones(351,1),'b')
plot(r,V(r,1.4257,1.873,41207)+(41875-41207),'r')
% excited Sigma
plot(r,V(r,1.4257,1.873,41207)+(41875-41207),'r')
% plot(r1,(offset+685)*ones(351,1),'r')
% plot(r1,(offset+1406)*ones(351,1),'r')
% plot(r1,(offset+2053)*ones(351,1),'r')

%ylim([0,3000])


%%
NPN=25;
mass=40*16/(40+16);
RH=pi/(NPN*(mass*36491/16.857)^0.5)


%% TDM

r=1.6:0.1:2.4;
r=r';
d=[17.13-19.16*r+3.0867*r.^2]
