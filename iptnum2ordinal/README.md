# iptnum2ordinal - Scilab Function

## Description

Convert number to ordinal string.

num must be a real positive integer which will be converted to a string with its ordinal form ord.

## Calling Sequence

```
ord = iptnum2ordinal(num)
```

## Input parameter
num - A real, positive scalar interger (>0)
Input parameters like string, float or negative numbers through an error.

## Detailed Explanation

* The function first validates the input.
* Checks the exactly one argument is provided
* Ensures it's a scalar, real, positive interger.
* If the 1<number<20, it returns the appropriate ordinal word.
* For the numbers greater than 20, it appends the correct suffix to the last digit of the number.

## Test cases
1.     iptnum2ordinal (1)
   Result "First"
2.     iptnum2ordinal (21)
   Result "21st"
3.     iptnum2ordinal (100)
   Result "100th"
4.     iptnum2ordinal (0)
   Result error:num must be a real positive integer
5.     iptnum2ordinal (3.4)
    Result error:num must be a real positive integer
