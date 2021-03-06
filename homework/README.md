
##In Swift:  

Technical questions in Swift

Requirements:

 - [1] Function is able to take in any array size

 - [2] Only integer values

 - [3] No helper functions
__________________________________________________________________________

**[1]** 

Create a function that would take in valid String inputs and determine if they are a palindrome or not.  This mean that the forward and backwards output of the string are both the same.

Example Input:  
 - anna --->  TRUE
 - Anna  ---> False
 - racecar -- > true  --> racecar 

**note**
you cannot use any helper functions or methods.  Example, you cannot use 'count()', 'split()', 'reversed()' methods in your solution.  You would need to develop your own logic.

Bonus:  Using the logic you created, implement an iPhone (swift) app that takes in a String input and prints out if it is a palindrome or not.

**[2]**

Given a 2D Array, determine if the values starting from position (0,0), will be multiplies 2x of itself going vertical and across.

Sample input 2D array:

[2] [4] [8] [16] [32] 
[4] [8] [16] [32] [64]
[8] [16] [32] [64] [128] 

Sample output:
Return:  True

**[3]**

Given a String, remove duplicate characters in that String and print out the unique characters

Example Input:
 - I want to be an Engineer  --->  IwobEgir

**[4]**

Given two sorted arrays of arbitrary size, return a final complete ordered array from smallest to largest numbers.

Example Input:

 - input_1 = [4,6,9,10,11,15]
 - input_1 = [5,7,12,13,14,16]

 Output:

 - final = [4,5,6,7,9,10,11,12,13,14,15,16]

**[5]**

 Given the [iOS_food] app, complete the application so that the application can function accordingly.  


 [iOS_food]: <https://github.com/brewinglab/ios_development/tree/master/tutorial/sample>

**[6]**

 Given a sequence integer numbers, return the higher value in the sequence and the lowest value.

 Exanoke Input:  

  - input_1 = [21, 90, 23, 81, 19, 15]

  Output:

   - highest: 90
   - lowest:  15

**[7]**

Given an integer, convert the integer value to it’s HEX (hexadecimal) equivalent and print out the String representation.

Example:
  
  input type: integer
  
  output type: string

  Input --> Output
   
    1 -> "1"
    0 -> "0"

    9 -> "9"
    10 -> "a"
    15 -> "f"
    
    16 -> "10"
    
    17 -> "11"
    18 -> "12"
    19 -> "13"
    
    30 -> "1e"
    31 -> "1f"
    32 -> "20"
    
    255 -> "ff"
    256 -> "100"

Bonus:  Implement the solution using recursion.  Recursive function calls.


