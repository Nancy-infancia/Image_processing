
## colorspace_conversion_input_check() - Scilab Function Documentation

### Purpose
Checks input validity for color space conversion. Accepts either colormaps or RGB images and validates type, shape, and data format.

### Syntax

[in_arg, cls, sz, is_im, is_nd, is_int] = colorspace_conversion_input_check(func, arg_name, in_arg, only_floats)

- **func**: Function name (string)
- **arg_name**: Argument name (string)
- **in_arg**: Input matrix/image
- **only_floats**: Boolean, allow only float types (`single` or `double`)

### Outputs

- `in_arg` — Reshaped colormap or normalized image
- `cls` — Data type of input
- `sz` — Size of input
- `is_im` — True if input was an image
- `is_nd` — True if input was ND image
- `is_int` — True if input was integer-based

## Test Cases with Expected Outputs

### Test Case 1: Valid Colormap

    map = eye(3, 3);
    [in_arg, cls, sz, is_im, is_nd, is_int] = colorspace_conversion_input_check("test_func", "single", map, %t);
**Expected Output:**
in_arg =
   1.   0.   0.
   0.   1.   0.
   0.   0.   1.
cls    = "constant"
sz     = [3 3]
is_im  = %f
is_nd  = %f
is_int = %f


### Test Case 2: Valid RGB image with integer type

    img = uint8(ones(50, 50, 3) * 255);
    [in_arg, cls, sz, is_im, is_nd, is_int] = colorspace_conversion_input_check("test_func", "rgb", img, %f);
**Expected Output:**
in_arg = [2500 x 3] matrix with values normalized to [0 1]
cls    = "uint8"
sz     = [50 50 3]
is_im  = %t
is_nd  = %f
is_int = %t

### Test Case 3: Image with more than 3 channels (should throw error)

    img4d = ones(10, 10, 3, 2);
    colorspace_conversion_input_check("test_func", "rgb", img4d, %f);
**Expected Output:**
Error: test_func: rgb must be a colormap or rgb image

### Test Case 4: Imaginary component present

    x = [1+2*%i 0 0; 0 1 0; 0 0 1];
    colorspace_conversion_input_check("test_func", "invalid_input", x, %f);
**Expected Output:**
Error: test_func: invalid_input must be numeric and real


### Test Case 5: Wrong data type input
    x = ["r", "g", "b"];
    colorspace_conversion_input_check("test_func", "string_input", x, %f);
**Expected Output:**
Error: test_func: string_input of invalid data type string

