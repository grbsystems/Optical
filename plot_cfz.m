
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

fratio = 1:0.1:10;
lam=550e-9;

cfz=critical_focus(lam, fratio) .* 1e6;  % Convert to microns

plot(fratio, cfz);
xlabel('Focal Ratio');
ylabel('CFZ Microns');
title('CFZ for various focal ratios');

