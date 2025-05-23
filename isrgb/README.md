# Function: isrgb
## Description
Return true if img is a RGB image.

A variable can be considered a RGB image if it is a non-sparse, real array of size MxNx3xK, and:

of floating point class with values in the [0 1] range or NaN;
of class uint8, uint16, or int16.
Note: despite their suggestive names, the functions isbw, isgray, isind, and isrgb, are ambiguous since it is not always possible to distinguish between those image types. For example: an uint8 matrix can be both a grayscale and indexed image; a grayscale image may have values outside the range [0 1]. They are good to dismiss input as an invalid image type, but not for identification.

## calling Sequence
bool= isrgb(img)

## Input parameter
img : The input image to be tested. It can be matrix, string, or a image.

## Dependencies
* ispart
* is_float_image
* isimage

## Detailed Explanation

### Initial Check 
The function initially checks whether the input is a text string. If the input is a string, the function returns 'false' because an image cannot be of string type. In Scilab, the type number for the string data type is 10.

### Image Verification 
The given input is tested to determine if it is an image and whether its dimensions are less than 5. Additionally, it checks if the number of channels is 3, as rgb images have three channel. To verify if the input is an image, the isimage() function is used.

If the user enters a boolean image, it is handled by the isimage() function, and the output is set to false.

### Float Check  
If all the above conditions are satisfied, the function checks whether the input is of a decimal type (float). If it is of decimal type, the input is passed to the 'ispart()' function, which takes two parameters: 'is_float_image()' and the input argument. 

The 'is_float_image()' function ensures that all pixel values in the image are between 0 and 1 or are '%nan'. The 'ispart()' function first checks the corners of the image and then verifies the rest of the image. This approach reduces computation time. The return value of 'ispart()' is stored in 'bool', which becomes the return value of the 'isgray()' function.

### Non-Float Check  
If the input is not a float, it is checked against the following three data types:  

* uint8
* uint16
* int16 

If the input matches any of these types, the function returns 'true'. Otherwise, it returns 'false'.

## Test cases
1.     isrgb (rand (5, 5, 3, 5))
   ### Result
   T

2.     isrgb (rand (5, 5, 1, 5))
   ### Result
   F
   
4.      isrgb ("INDIA")
   ### Result
   F

5.     img=imread('path.jpg');
       isrgb(img)
   ### Test evidence
   ![Screenshot 2025-01-26 162421](https://github.com/user-attachments/assets/72e9d47c-1edc-4261-98f7-5d3c3af12e7d)


6.     img2=imread('pathgray.jpg');
       isrgb(img2)
   ### Test evidence
  ![Screenshot 2025-01-26 163132](https://github.com/user-attachments/assets/9637c03c-8a78-4d75-be48-7c83b07b9035)

