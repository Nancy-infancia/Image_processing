# Function: logical

## Description
Convert the numeric object x to logical type. 

## Calling sequence
  * y=logical(x)

## Input parameter
x = Takes all the valid numerical input types(i.e integers, complex numbers, boolean)

## Detailed description

* The input is checked first, if it is boolean the same has to be written. 
* If the input is string which is not a valid input it returns an error message.
* Finally any nonzero values will be converted to true (1) while zero values will be converted to false (0). 

## Error handling
The non-numeric value NaN cannot be converted and will produce an error. 

## Test cases
1.      logical([1 2 3;5 3 2])
   ##Result
   [T T T;T T T]

2.      logical(0)
    ##Result
    F

3.      logical(3.14)
    ##Result
    T

4.      logical("India")
    ##Result
    F

5.      logical([%t %f %f])
    ##Result
    T F F







