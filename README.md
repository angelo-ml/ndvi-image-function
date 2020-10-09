# MATLAB NDVI Image Function
This function is designed to receive as an input two images in the red and near-infrared spectrums respectively and creates the image of the Normalized Differential Vegetation Index (NDVI).

## Function Parameters
- red band image path (required - string).
- near infrared band image path (required - string).
- Minimum NDVI value. The lowest value that the NDVI output will have (optional - double, default is 0).
- If it should plot NDVI and its histogram (optional - boolean, default is false).
- Define if it should use parallel processing toolbox (optional - boolean, default is false).

## Function Output
- greyscale_ndvi: Matrix with the same dimensions as the input images, where each pixel represents a value of the NDVI.
- rgb_ndvi: Three dimension matrix, representing the colored image of the NDVI.

## Colors

- pixels with values bellow the min value are black.
- pixels with values between min color and 0.2 are grey.
- pixels with values between 0.2 and 0.4 are green.
- pixels with values between 0.4 and 1 are red.

(bigger values are represented with brighter colors)

![ndvi output](https://anjelo.ml/github-images/ndvi-image-function/github.jpg)

## Example Usage
```
% define near infrared image
nir_img = 'example-data/band_4.TIF';
% define red image
r_img = 'example-data/band_3.TIF';

% call ndvi function (red image, near infrared image, index min value, plot figures, parallel processing)
[greyscale_ndvi, rgb_ndvi] = ndvi(r_img, nir_img, 0, true, true);
```

## Data
The example data are images from LandSat 5 satellite, collected from www.usgs.gov.
