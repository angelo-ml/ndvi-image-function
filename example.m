% define near infrared image
nir_img = 'example-data/band_4.TIF';

% define red image
r_img = 'example-data/band_3.TIF';

% call ndvi function (red image, near infrared image, index min value, plot figures, parallel processing)
ndvi(r_img, nir_img, 0, true, true);