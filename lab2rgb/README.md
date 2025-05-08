# lab2rgb - Scilab Function

## Description

Converts colors from the **CIE Lab (L*a*b*) color space** to the **RGB (Red, Green, Blue)** color space.

This function supports both single color values and multi-dimensional arrays (e.g., images), preserving input structure and type. Internally, it performs two steps:
1. Converts Lab to XYZ using `lab2xyz`.
2. Converts XYZ to RGB using `xyz2rgb`.

The output RGB values are in the range [0,1], representing standard sRGB color space.

## Calling Sequence

```
rgb = lab2rgb(lab)
```

## Input parameters

lab - A numeric array where the last dimension has size 3, representing L*a*b* color values.

## Dependencies
* colorspace_conversion_input_check()
* colorspace_conversion_revert()
* lab2xyz()
* xyz2rgb()


## Detailed description
1. Input validation and preprocessing
   * Validates that input is a numeric array.
   * Preserves original shape and class (except for integers, which are converted to double).

2. Lab → XYZ Conversion:
    * Calls internal lab2xyz function to convert Lab values to CIE XYZ using D65 reference white.

3. XYZ → RGB Conversion:
   * Calls internal xyz2rgb function to convert XYZ values to sRGB.

4. Output Formatting:
   * Returns result in the same format as the input (same size, matrix/array type), with values typically in [0,1].


## Test cases
1. lab2rgb ([53.24, 80.09, 67.20]) ## Result [0.9999804   0.0000679   0.000032]
2. lab2rgb ([87.74, -86.18, 83.18])  ## Result [0.0008014   1.000054   0.0001915]
3. lab2rgb ([53.39, 0.00, 0.00]) ## Result [0.5000122   0.5000082   0.500029]
4. lab2rgb ([9.66, 29.68, 15.24]) ## Result [0.2500385   0.0000116   0.0000728]
5. lab2rgb ([150 130 130]) ## Result [ 2.7136273   1.0277941   0.4915506]
6. lab2rgb (sparse ([100, 0.00, 0.00])) ## Result [1.0000036   0.9999959   1.0000355]
7. lab2rgb (1,2) ## Result Wrong number of input arguments.









