# `iptcheckmap` - Scilab Function

## Description

Check if argument is valid colormap.

If in is not a valid colormap, gives a properly formatted error message. func_name is the name of the function to be used on the error message, var_name the name of the argument being checked (for the error message), and pos the position of the argument in the input.

A valid colormap is a 2-D matrix with 3 columns of doubles with values between 0 and 1 (inclusive), that refer to the intensity levels of red, green and blue.

## Calling Sequence

```
iptcheckmap(in, func_name, var_name, pos)
```
## Dependencies
iscolormap()

## Detailed description
A valid colormap must be:

A non-empty , 2-dimensional matrix.
Of type double (floating point).
With exactly 3 columns , representing Red, Green, and Blue (RGB) values.
If the input does not meet these criteria, the function throws a descriptive error.

It also checks that the arguments func_name and var_name are strings, and that pos is a real positive integer. These are used to generate meaningful error messages.

# Test cases

1. iptcheckmap (jet(64), 'func', 'var', 2)  ## it works
2. iptcheckmap (3, 'func', 'var', 2)  ## Result: error message
3. iptcheckmap (jet(64), 'func', 'var', "india")  ## Result: Argument pos must be a real positive integer
4. iptcheckmap (jet(64), 2, 'var', 4) ## Result: Argument func_name must be a string
5.  iptcheckmap (jet(64), 2, 'var', 4) ## Result: Argument func_name must be a string
6.  iptcheckmap (bone(6), 'func', 'var', 2) ## it works
   
