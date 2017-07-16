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

r = 0:0.25:10;

b1 = besselj(1,r);
plot(r,b1);
hold on;
ax=gca;

b2 = besselj(2,r);
plot(r,b2);

b3 = besselj(3,r);
plot(r,b3);

plot(r, r.* 0);
legend('Order 1', 'Order 2', 'Order 3');

title('Bessel functions of order 1, 2 and 3');

print('bessel-funcs', '-depsc');

hold off;
