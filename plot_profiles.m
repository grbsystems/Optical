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

clf();

x=-5:0.1:5;
sigma1 = 0.6;

fwhm = fwhm_gauss(x, 0, sigma1);
plot(x, fwhm, '-b');

hold on;

sigma2 = 2;
fwhm = fwhm_gauss(x, 0, sigma2);
plot(x, fwhm, '--b');
legend('Good Seeing', 'Bad Seeing');

x1 = (2.3548 * sigma1) / 2;
x=[-x1 x1];
fwhm = fwhm_gauss(x, 0, sigma1);
plot(x, fwhm, '-b');

x1 = (2.3548 * sigma2) / 2;
x=[-x1 x1];
fwhm = fwhm_gauss(x, 0, sigma2);
plot(x, fwhm, '--b');

hold off;

print('stellar-profiles', '-depsc');
