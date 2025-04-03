# iscolormap Function

## Description
The `iscolormap` function checks whether the given input is a valid colormap. A colormap is considered valid if it is a numeric, real, floating-point matrix with exactly 3 columns, representing the RGB color components.

## Calling Sequence
result = iscolormap(cmap)

- **Input:** `cmap` - A matrix to be validated as a colormap.
- **Output:** `result` - A boolean value (`true` or `false`).


## Dependencies
- `isreal()` - Checks if the matrix contains real numbers.
- `type()` - Identifies the data type of the input.
- `ndims()` - Determines the number of dimensions in the input.
- `size()` - Retrieves the matrix dimensions.


## Examples

1.     cmap = jet(64);
       result = iscolormap(cmap);  
### output
T

2.     cmap = [1 0 3; 2 3 1];
       result = iscolormap(cmap);
### Output
T

3.     result = iscolormap("india"); 
### Output
F


4.     cmap_invalid = rand(64, 4);  // 4 columns instead of 3
       result = iscolormap(cmap_invalid);  
### Output
F

5.     cmap = [1 0 3 5; 2 3 1 5];
       result = iscolormap(cmap);
### Output
F

6.   cmap=[2 1 -7; 3 2 -5]
     result=iscolormap(cmap)
# Output
T
