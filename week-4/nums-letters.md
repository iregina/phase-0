#DBC Module 4.2: Numbers, Letters, and Variable Assignment
##By Regina Wong

----

**1. What does <puts> do?**    

<puts> is short for "puts string" and it's a command used for displaying the results of evaluating Ruby code. The <puts> command is often compared to the <print> command because they both display the results, but the difference is <puts> adds a newline after executing, whereas <print> does not.   
  
>*For Example, the following code:*   
<puts "hello">  
<puts "second line">  
<print "hello again!">  
<print "goodbye for now!">   
>
>*Will print this:*  
hello  
second line  
hello again!goodbye for now!  

**2. What is an integer? What is a float? **   
 
An integer is a number that can be written without a fractional component, or decimals. Float is a number with no fixed number of digits before and after the decimal point.  

>*Examples of Integers:*   
3, 5, 494, 100000, 204  
>
>*Examples of Floats:*  
2.0, 5.25, 1394.3948538, 0002.0000 

**3.What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**    

The difference between float and integer division is apparent when a number is being divided by a non-integer.   

In float division, the number will come out accurately, as in. In other words, if 10 / 4 will equal 2.5. However, integer divisions only results in integers and if the output isn't an integer/perfectly divided, it will round down to nearest integer. In the case of the above example, that would have been 2.

>*Integer Division:*    
10 / 3 =  3 

>*Float Division:*    
10 / 3 = 3.33333...  

##Mini-Challenge

**Hours in a year:**  
puts 24 * 365  

**Minutes in a decade:**  
puts 60 * 24 * 365 * 10


##Assignments

**4.2.1 Defining Variables**  

[https://github.com/iregina/phase-0/blob/master/week-4/defining-variables/defining-variables.rb](https://github.com/iregina/phase-0/blob/master/week-4/defining-variables/defining-variables.rb)

**4.2.2 Simple String Method  
[https://github.com/iregina/phase-0/blob/master/week-4/simple-string/simplestring.rb](https://github.com/iregina/phase-0/blob/master/week-4/simple-string/simplestring.rb)  

**4.2.3 Local Variable and Basic Arithmetical Expressions
[https://github.com/iregina/phase-0/blob/master/week-4/basic-math/basic-math.rb](https://github.com/iregina/phase-0/blob/master/week-4/basic-math/basic-math.rb) 


##Reflect
**1. How does Ruby handle addition, subtraction, multiplication, and division of numbers?** 

Ruby handles addition, subtraction, multiple, and division as methods -- which means that it apply these operators to not just numbers, but strings as well -- although that gets a little more complicated. However, with Ruby, you just have to be careful about what you apply these method to. For example, you have to clear about applying this methods to numbers, not strings. Strings can sometimes work for these operations. 
  
**2. What is the difference between integers and floats?**  

Integers do not have a decimal and are not fractions, they are whole numbers. Floats always have a decimal place and can have unlimited number of digits before and after the decimal place. 
  
**3. What is the difference between integer and float division?**  

As I wrote above, with integer division, the result will always be an integer. Even if the number isn't properly divided, this operations will round down the number to the nearest integer.With float division, you get can get fractions or exact numbers. 
  
**4. What are strings? Why and when would you use them?**  

Strings are essentially words, not numbers. You use them to return words, sentences, or symbols. 
  
**5. What are local variables? Why and when would you use them?**  

Local variable are variables that are valid only within the local area of a Ruby source code. They exist only within a method, and when they are referred outside the method, they might come back as an Error. 
  
**6. How was this challenge? Did you get a good review of some of the basics?** 

I had the toughest time understanding exactly what a local method was -- I was thinking far too complicated when I should have been applying the principle of Occam's Razor. 