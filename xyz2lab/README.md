# xyz2lab - Scilab Function

## Description

Converts colors from the **CIE XYZ color space** to the **CIE Lab (L*a*b*) color space**.

This function supports both single color values and multi-dimensional arrays, preserving input structure and type. It uses the standard D65 illuminant as reference white.

## Calling Sequence

```
lab = xyz2lab(xyz)
```

## Input parameter
xyz - Matrix or array. (A numeric array where the last dimension has size 3, representing xyz color values)

## Dependencies
colorspace_conversion_input_check()
colorspace_conversion_revert()

## Detailed description

1. Input Validation & Preprocessing:
* Ensures xyz has valid dimensions.
* Normalizes XYZ by dividing with D65 reference white
  
2. Non-linear transformation
* Applies a piecewise transformation to each XYZ channel:
Linear below threshold (epsilon = (6/29)^3)

3. Lab Computation:
Computes L*, a*, b* using standard CIE formulas

4. Output Formatting:
Reshapes and restores original input format (matrix/array dimensions and type).

## Test cases
1. xyz2lab ([0.4125, 0.2127, 0.0193]) ## Result [53.243735   80.093121   67.238781]
2. xyz2lab ([0.7700, 0.9278, 0.1385]) ## Result [97.138247  -21.555908   94.482485]
3. xyz2lab ([0.5276, 0.3812, 0.2482]) ## Result [68.108965   48.382794   22.841896]
4. xyz2lab (sparse ([0 0 0])) ## Result [0.   0.   0.]
5. xyz2lab (1,2) ## Result Wrong number of input arguments.





