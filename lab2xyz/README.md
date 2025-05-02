// Copyright (C) 2018 - IIT Bombay - FOSSEE
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Author: Nancy Infancia , GCT
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in



# `lab2xyz` Function Documentation

## Purpose

A color in the CIE L*a*b* (or CIE Lab) space consists of lightness L* and two color-opponent dimensions a* and b*. The whitepoint is taken as D65. The CIE L*a*b* colorspace is a colorimetric colorspace, meaning that their values do not depend on the display device hardware. This colorspace is designed to incorporate the human perception of color differences. A color in the CIE XYZ color space consists of three values X, Y and Z. Those values are also designed to be colorimetric.

## Dependencies
  colorspace_conversion_input_check
  colorspace_conversion_revert

## Syntax

```scilab
xyz = lab2xyz(lab)
```
## Description

This function converts Lab color values to XYZ color values. It calculates intermediate values from the L, a, and b components, and uses a conditional function `f` to handle the non-linear transformation. The output values are scaled using the D65 reference white point to obtain the final XYZ values.

## Test cases

1. lab2xyz ([53.24, 80.09, 67.20])  #result [0.412437171   0.212665582   0.019335931]
2. lab2xyz ([97.14, -21.55, 94.48])  #result [0.770066731   0.927843128   0.138522754]
3. lab2xyz ([32.30, 79.19, -107.86]) #result [0.180466443   0.072188401   0.95037856]
4. lab2xyz ([100, 0.00, 0.00]) #result [0.95047   1.   1.08883]
5. lab2xyz ([68.11, 48.39, 22.83]) #result [0.527644949   0.381214079   0.248283392]
6. lab2xyz ([60.32, 98.24, -60.83]) #result [0.592841994   0.284800743   0.969605429]
7. lab2xyz (sparse ([100, 0.00, 0.00])) #result [0.95047   1.   1.08883]
