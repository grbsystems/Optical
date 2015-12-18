
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

fratio = 8;
lam=550e-9;
fl=.5:.05:3;

fwhm = 4;
cfz=cfz_fwhm (lam, fratio, fl, fwhm) .* 1e6;  % Convert to microns

plot(fl.*1000, cfz, '-k');
xlabel('Focal Length (mm)');
ylabel('CFZ Microns');
title('CFZ for various focal lengths and seeing');

hold on

fwhm = 3;
cfz=cfz_fwhm (lam, fratio, fl, fwhm) .* 1e6;  % Convert to microns
plot(fl.*1000, cfz, '--g');

fwhm = 2;
cfz=cfz_fwhm (lam, fratio, fl, fwhm) .* 1e6;  % Convert to microns
plot(fl.*1000, cfz, ':b');

fwhm = 1;
cfz=cfz_fwhm (lam, fratio, fl, fwhm) .* 1e6;  % Convert to microns
plot(fl.*1000, cfz, '.-m');

legend('4 arcseconds','3 arcseconds','2 arcseconds','1 arcsecond')
hold off

print('cfz-seeing', '-depsc');

