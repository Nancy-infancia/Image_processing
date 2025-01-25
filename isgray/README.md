# Function: isgray
## Description
Check whether the given image is gray or not.

## calling Sequence
bool= isgray(img)

## Input parameter
img : The input image to be tested. It can be matrix, string, or a image.

## Detailed Explanation

### Initial Check 
The function initially checks whether the input is a text string. If the input is a string, the function returns false because an image cannot be of string type. In Scilab, the type number for the string data type is 10.

### Image Verification 
The given input is tested to determine if it is an image and whether its dimensions are less than 5. Additionally, it checks if the number of channels is 1, as grayscale images have only one channel. To verify if the input is an image, the isimage() function is used.

A valid image can also be of the Boolean type, but the `isreal()` function in Scilab cannot handle Boolean inputs. Therefore, it is first converted to a logical type. The input image must be a non-empty matrix and a non-sparse matrix, and it can be of types such as integer or Boolean. All these conditions are verified in the `isimage()` function.

**Float Check**  
If all the above conditions are satisfied, the function checks whether the input is of a decimal type (float). If it is of decimal type, the input is passed to the `ispart()` function, which takes two parameters: `is_float_image()` and the input argument. 

The `is_float_image()` function ensures that all pixel values in the image are between 0 and 1 or are `%nan`. The `ispart()` function first checks the corners of the image and then verifies the rest of the image. This approach reduces computation time. The return value of `ispart()` is stored in `bool`, which becomes the return value of the `isgray()` function.

**Non-Float Check**  
If the input is not a float, it is checked against the following three data types:  

* `uint8`
* `uint16`
* `int16`  

If the input matches any of these types, the function returns `true`. Otherwise, it returns `false`.

## Test cases
1. A=[0 0 1; 1 0 1]

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
[https://drive.google.com/file/d/1ehte-v6L2PrSU7c_QYL7_YyIvKZGD9J6/view?usp=sharing]


5. img2=imread('anibn.png')

   isgray(img2)
### Test evidence
[https://drive.google.com/file/d/1DaO4EcrwU_MhGZklYIQC-biN0hcrxZti/view?usp=sharing]

6. img3=imread('pathgray.jpg')

   isgray(img3)
### Test evidence
[https://drive.google.com/file/d/1Zc6lk7noSxXxsfhJ9u9gpyP-F6ULIUSu/view?usp=sharing]
