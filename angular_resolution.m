
aperture=0.05:0.01:1.00;
lambda=550e-9;

resolution=airy_disk (lambda, aperture);

clf();
plot(aperture, resolution);
ylabel('Resolution (radians)');
xlabel('Aperture (Meters)');
title('Angular Resolution vs. Aperture');
