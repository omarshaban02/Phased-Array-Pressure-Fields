param = getparam('P4-2v'); % Example: Phased array transducer
viewxdcr(param);          % Visualize transducer configuration (optional)

% Define focal point
% Lateral = 20 mm, Depth = 50 mm
xp = 20e-3;
yp = 50e-3;

% Compute transmit delays
txdel = txdelay(xp,yp, param);

% Visualize transmit delays
figure;
plot(txdel * 1e6); % Convert to microseconds
title('Transmit Delays');
xlabel('Element Index');
ylabel('Delay [\mus]');

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
title('Focused wave - RMS pressure field')

hold on
plot(xp*1e2,yp*1e2,'bo','MarkerFaceColor','b')
legend('focus point','Location','South')
hold off