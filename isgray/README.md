# Function: isgray
## Description
Check whether the given image is gray or not.
## calling Sequence
bool= isgray(img)
## Parameter
img : The input image to be tested. It can be matrix, string, or a image.
## Detailed explanation
### Initial check
The function intially check the input is a text or not.  If the input is text it returns false as the image cannot be of string type.
In scilab the type number of the string datatype is 10.
### Image verification
The given input is tested if it is image or not and whether the dimensions is less than 5 and the No. of the channel is 1 or not.  As the number of channel for the grayscale image is 1.
For the image check the input is passed to the isimage() 
* The valid image can be boolean type but the isreal() in scilab cannot handle boolean input. So it is first converted to logical type.
* The input image should be a non-empty matrix and a non-sparse matrix and can be of type integer, boolean
All this conditions are verified in isimage()
### Float check
If all the above conditions are true then it will check whether the input is a decimal type. If it is decimal type, the input is passed to the ispart(). Which takes two parameters, they are a is_float_image() and the input argument. The image of double type must have all the values between 0 and 1 or be %nan is checked by is_float_image().
ispart() first checks the corner of the image first and then the rest of the part of the image. This reduces the time of computation.
The return value of ispart is stored in bool and it will be return value of isgray()
### Not float
If the input is not float, then it is checked in either of the three types.
* uint8
* uint16
* int16
If any this condition is true then the output will true or else false
## Test cases
1. A=[0 0 1; 1 0 1]

   isgray(A)
### ans
T

2. a = rand (10)

   a(50) = %nan
   
   isgray (a)
### ans
T

3. b(5, 5) = 2

   isgray(b)
### ans
F

4.  img= imread('path.jpg')

    isgray(img)
### ans
[https://drive.google.com/file/d/1ehte-v6L2PrSU7c_QYL7_YyIvKZGD9J6/view?usp=drive_link]

5. img2=imread('anibn.png')

   isgray(img2)
### ans
[https://drive.google.com/file/d/1DaO4EcrwU_MhGZklYIQC-biN0hcrxZti/view?usp=drive_link]
