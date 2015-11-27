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

aperture=0.05:0.01:1.00;
lambda=550e-9;

resolution=airy_disk (lambda, aperture);

arcsecs = (180.*resolution)./pi.*3600;

clf();
plot(aperture, arcsecs);
ylabel('Resolution (arcseconds)');
xlabel('Aperture (Meters)');
title('Angular Resolution vs. Aperture');

print -depsc resolution.eps;