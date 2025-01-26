# Function: isbw

## Description
Checks whether the given image is black and white or not

## Calling Sequence
bool=isbw(img)
bool=isbw(img,"logical")
bool=isbw(img,"non-logical")

## Input parameter
img= The input image to be tested. It can be matrix, string, or a image.
logic= It is a string type input parameter. Specifies the type of check to be performed.

## Detailed description

### Initial check
The function initially checks whether the input is a text string. If the input is a string, the function returns 'false' because an image cannot be of string type. In Scilab, the type number for the string data type is 10.

### Default argument handling
If the logic argument is not provided, by default, the value is set to "logical".

### Image verrification
The given input is tested to determine if it is an image and whether its dimensions are less than 5. Additionally, it checks if the number of channels is 1, as grayscale images have only one channel. To verify if the input is an image, the isimage() function is used.

A valid image can also be of the Boolean type, but the 'isreal()' function in Scilab cannot handle Boolean inputs. Therefore, it is first converted to a logical type. The input image must be a non-empty matrix and a non-sparse matrix, and it can be of types such as integer or Boolean. All these conditions are verified in the 'isimage()' function.

### Logical check (logic="logical")
If the logic argument is set to "logical", logical type means it will be T or F. So, the function checks if the image type is either 4 (Boolean) or 6 (logical) using or(type(img)==[4 6]).

### Non-logical check (logic="non-logical")
If the logic argument is set to "non-logical", the function pass the input to the helper functions is_bw_nonlogical() via the ispart(). If the image is non-logical then it will be 0's and 1's. Fisrt a part of the image is checked for non-logical and if it is true then the entire image is checked.

### Error handling
If the logic argument is neither logical nor non-logical, the function throws an error message.

## Test cases

1. a( 1,  1) = 1;
   a(50, 50) = 2;
   isbw(a)
   ## Result
   F                      // since matrix contains values greater than 1

2. img(1, 1) = 2;
   isbw(img,"non-logical")
   ## Result
   F

3. y = grand(4, 4, "uin", 0, 1);  //creates a uniformly distributed 4*4 matrix of 0's and 1's.
   isbw(y,"logical")
   ## Result
   F

4. y = grand(4, 4, "uin", 0, 1);
   isbw(y,"non-logical")
   ## Result
   T

5. y = grand(4, 4, "uin", 0, 1);
   isbw (logical (img), "logical")  // A non-logical matrix can be coverted to logical matrix by calling the logical function.
   ## Result
   T

6. img=imread('path.jpg');
   isbw(img)
   ## Result
   [https://drive.google.com/file/d/1VKG72XETAlwWm3FQFqq92jofo74kVKAh/view?usp=sharing]
