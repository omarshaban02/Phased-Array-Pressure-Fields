param = getparam('P4-2v'); % Example: Phased array transducer
viewxdcr(param);          % Visualize transducer configuration (optional)

x0 = 2e-2; z0 = 5e-2; % in m
xf = [-x0 0 x0]; zf = [z0 sqrt(x0^2+z0^2) z0]; % focus points (in m)

txdel = txdelay(xf,zf,param); % in s

% Visualize transmit delays
fig = bar3(txdel*1e6,.1);
xlabel('Element number')
zlabel('Delays (\mus)')
title('TX delays for a 3-MLT transmit')
axis tight square
saveas(fig, "Delays.png")

x = linspace(-5e-2,5e-2,200); % in m
z = linspace(0,10e-2,200); % in m
[x,z] = meshgrid(x,z); % image grid
y = zeros(size(x));

P = pfield(x,y,z,txdel,param);

imagesc(x(1,:)*1e2,z(:,1)*1e2,20*log10(P/max(P,[],'all')))
caxis([-20 0]) % dynamic range = [-20,0] dB
c = colorbar;
c.YTickLabel{end} = '0 dB';
colormap hot
axis equal ij tight
xlabel('x (cm)'), ylabel('z (cm)')
title('MLT - RMS pressure field')

hold on
plot(xf*1e2,zf*1e2,'bo','MarkerFaceColor','b')
legend('focus points','Location','South')
hold off