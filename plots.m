% Copyright (C) 2015 Jeremy Burton
% 
% This program is free software; you can redistribute it and/or modify it
% under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

% Author: Jeremy Burton
% Created: 2015-11-10

x = 0.1:0.2:10;

I0 = 1;
z = I0*(2*besselj(1,x)./x).^2;

theta = 0:pi/10:2*pi;

xx = bsxfun(@times,x',cos(theta));
yy = bsxfun(@times,x',sin(theta));
zz = repmat(z',1,length(theta));

f = figure();
f.Position=[100 100 1000 800];

subplot(1,2,1);
plot(x, z);
ylabel('intensity')
xlabel('arcseconds')


subplot(1,2,2);
surf(xx,yy,zz);
zlabel('intensity')
xlabel('arcseconds')
ylabel('arcseconds')
colormap summer

print -depsc airy_bessel.eps;

%close();