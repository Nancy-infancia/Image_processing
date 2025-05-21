
# rgb2xyz 

## Description

Transform a colormap or image from sRGB to CIE XYZ color space.

A color in the RGB space consists of red, green, and blue intensities. The input RGB values are interpreted as nonlinear sRGB values with the white point D65. This means the input values are assumed to be in the colorimetric (sRGB) colorspace.

A color in the CIE XYZ color space consists of three values X, Y and Z. Those values are designed to be colorimetric, meaning that their values do not depend on the display device hardware.

Input values of class double, single, uint8 or uint16 are accepted. Output class is generally of type double. The shape of the input is conserved.

## Calling Sequence

```
xyz = rgb2xyz(rgb)
```
## Dependenies
* colorspace_conversion_input_check
* colorspace_conversion_revert

## Input Parameter

`rgb`    An RGB image or colormap. Must be of valid numeric type (e.g., `uint8`, 
             `double`, etc.). Can be a 2D Nx3 colormap or a 3D/4D image matrix. 


## Detailed Explanation

1. **Gamma Correction**: Converts sRGB nonlinear values to linear RGB values using the standard inverse gamma curve.

2. **Matrix Multiplication**: Applies the standard RGB to XYZ matrix (`matrix_rgb2xyz_D65`) to perform the conversion:
   ```
   [0.412453, 0.357580, 0.180423;
    0.212671, 0.715160, 0.072169;
    0.019334, 0.119193, 0.950227]
   ```

3. **Reshaping and Permuting**: If the input is an image, the result is reshaped and permuted to maintain its structure using a helper function: `colorspace_conversion_revert`.

4. **Normalization**: If the input was of integer type, it's normalized to `double` range `[0, 1]`.

5. **Error Handling**: The function validates the input's type, dimensionality, and real-valued nature before processing. Scilab does not handle single input as Matlab or Octave. And it also throws error for single(datatype) input.


## Test Cases  (the result is approximated to the 4 digit floating point)
1. rgb2xyz ([0 0 0])    # result [0, 0, 0]   
2. rgb2xyz ([1 0 0])    # result [0.4125, 0.2127, 0.0193]
3. rgb2xyz ([0.5 0.5 0.5]) # result [0.2034, 0.2140, 0.2330]   // checking for float
4. rgb2xyz ([1.5 1 1])    # result [1.5845, 1.3269, 1.1185]
5. rgb2xyz (sparse ([0 0 1]))  # result [0.1804, 0.0722, 0.9502]
6. rgb2xyz (1,2)  # result error (Wrong number of input arguments)
7. rgb2xyz()   # result error (Wrong number of input arguments)
