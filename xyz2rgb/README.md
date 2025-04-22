# `xyz2rgb` Function Documentation

## Description
`xyz2rgb` converts a color from the CIE 1931 XYZ color space to the standard sRGB color space, using the D65 white point. It supports inputs as color maps or images and handles normalization and rounding for practical usage.


## Calling Sequence
```
rgb = xyz2rgb(xyz)
```

## Input Parameters

- `xyz`: A numeric matrix representing a single XYZ triplet `[X Y Z]`, a colormap `Nx3`, or an image with shape `MxNx3` or `MxNx3xK`.
  - Supported types: `double`, `uint8`, `int8`, `uint16`
  - Values are assumed to be normalized in the range [0, 1] for floating-point inputs.
  - Input values `single` is not accepted in Scilab


## Output Parameters

- `rgb`: A matrix of the same shape as `xyz` containing the corresponding RGB values. The output is:
  - Clamped to [0, 1]
  - Rounded to two decimal places
  - Converted to the original input data type (if it was integer)


## Test cases

1. xyz2rgb ([0, 0, 0]) #result [0 0 0]
2. xyz2rgb ([0.4125, 0.2127, 0.0193]) #result [1 0 0]
3. xyz2rgb ([0.7700, 0.9278, 0.1385]) #result [1 1 0]
4. xyz2rgb ([0.5276, 0.3812, 0.2482])  #result [1 0.5 0.5]
5. xyz2rgb () #result error
6. xyz2rgb (1,2) #result error
