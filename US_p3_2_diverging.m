param = getparam('P4-2v'); % Example: Phased array transducer
viewxdcr(param);          % Visualize transducer configuration (optional)

width = 75/180*pi; % width angle in rad
tilt = 0; % tilt angle in rad

txdel = txdelay(param,tilt,width); % in 

% Visualize transmit delays
delayfig = figure;
plot(txdel * 1e6); % Convert to microseconds
title('Transmit Delays');
xlabel('Element Index');
ylabel('Delay [\mus]');
saveas(delayfig, "Transmit Delays2.png")

x = linspace(-4e-2,4e-2,200); % in m
z = linspace(0,10e-2,200); % in m
[x,z] = meshgrid(x,z);

P = pfield(x,z,txdel,param);

imagesc(x(1,:)*1e2,z(:,1)*1e2,20*log10(P/max(P,[],'all')))
caxis([-20 0]) % dynamic range = [-20,0] dB
c = colorbar;
c.YTickLabel{end} = '0 dB';
colormap hot
axis equal ij tight
xlabel('x (cm)'), ylabel('z (cm)')
title('Diverging wave - RMS pressure field')