# Function: intmax

## Description
The intmax function returns the maximum possible value for a given integer type in Scilab. The function supports both signed and unsigned integer types.


## Calling sequence
maxval = intmax(x)
maxval = intmax ("type")

## Input parameter
A string can be given as input for which we need to find the maximum value. 
An input can also be an variable that contains the specified interger type.

## Detailed description
* The function uses a lookup table (struct) to store maximum values for different integer types.
* If the input is a string, it directly looks up the corresponding max value.
* If the input is an integer variable, the function determines its type and retrieves the max value.
* The function supports both signed (int8, int16, int32, int64) and unsigned (uint8, uint16, uint32, uint64) integers.

## Error handling
* If the input is not a string or an integer type, the function throws an error:

"Input must be an integer type or a string specifying the type."

* If the input type is not supported, an error is returned:

"Unsupported integer type: <type>"


## Test cases

    intmax("float")
### Result
Unsupported integer type: float

    intmax("int8")
### Result
127.

        x=int16(1)
        intmax(x)
### Result
32767.

    intmax("uint8")
### Result 
255.

        intmax(%t)
### Result
Input must be an integer type or a string specifying the type.
