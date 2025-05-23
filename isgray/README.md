# Function: isgray
## Description
Return true if img is a grayscale image.

A variable can be considered a grayscale image if it is a non-sparse, real array of size MxNx1xK, and:

of floating point class with values in the [0 1] range or NaN;
of class uint8, uint16, or int16.
Note: despite their suggestive names, the functions isbw, isgray, isind, and isrgb, are ambiguous since it is not always possible to distinguish between those image types. For example: an uint8 matrix can be both a grayscale and indexed image; a grayscale image may have values outside the range [0 1]. They are good to dismiss input as an invalid image type, but not for identification.

## calling Sequence
bool= isgray(img)

## Input parameter
img : The input image to be tested. It can be matrix, string, or a image.

## Dependencies
* is_float_image
* ispart
* isimage

## Detailed Explanation

### Initial Check 
The function initially checks whether the input is a text string. If the input is a string, the function returns 'false' because an image cannot be of string type. In Scilab, the type number for the string data type is 10.

### Image Verification 
The given input is tested to determine if it is an image and whether its dimensions are less than 5. Additionally, it checks if the number of channels is 1, as grayscale images have only one channel. To verify if the input is an image, the isimage() function is used.

A valid image can also be of the Boolean type, but the 'isreal()' function in Scilab cannot handle Boolean inputs. Therefore, it is first converted to a logical type. The input image must be a non-empty matrix and a non-sparse matrix, and it can be of types such as integer or Boolean. All these conditions are verified in the 'isimage()' function.

### Float Check  
If all the above conditions are satisfied, the function checks whether the input is of a decimal type (float). If it is of decimal type, the input is passed to the 'ispart()' function, which takes two parameters: 'is_float_image()' and the input argument. 

The 'is_float_image()' function ensures that all pixel values in the image are between 0 and 1 or are '%nan'. The 'ispart()' function first checks the corners of the image and then verifies the rest of the image. This approach reduces computation time. The return value of 'ispart()' is stored in 'bool', which becomes the return value of the 'isgray()' function.

## Non-Float Check  
If the input is not a float, it is checked against the following three data types:  

* uint8
* uint16
* int16 

If the input matches any of these types, the function returns 'true'. Otherwise, it returns 'false'.

## Test cases
    1. A=[0 0 1; 1 0 1
    isgray(A)
### Result
T


    2. a = rand (10)
    a(50) = %nan
    isgray (a)
### Result
T


      3. b(5, 5) = 2
         isgray(b)
### Result
F


      4.  img= imread('path.jpg')
          isgray(img)
### Test evidence

![Screenshot 2025-01-25 162954](https://github.com/user-attachments/assets/99c3aa9b-3b6e-4654-92b0-623852dcb58b)


      5. img2=imread('anibn.png')
         isgray(img2)
### Test evidence
![Screenshot 2025-01-25 163905](https://github.com/user-attachments/assets/7ccf76b4-41d4-47b4-b009-f6e3bbaa5a54)


      6. img3=imread('pathgray.jpg')
         isgray(img3)
### Test evidence
![Screenshot 2025-01-25 171805](https://github.com/user-attachments/assets/2b8d2ee0-86c8-4709-865b-1c750f334669)

