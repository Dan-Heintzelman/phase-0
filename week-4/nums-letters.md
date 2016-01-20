# Assignment 4.2 - Numbers and Letters

**1.What does puts do?**

Puts stands for "put string" and it literally means that it is printing the output to the console and then starting a new line. It does NOT return any value.

**2.What is an integer? What is a float**

An integer is a whole number, or a number that does not have a decimal such as 3 or 500, 8000.

A float actually stands for a "floating point number" and it is a number that is not whole and has a decimal value such as 4.5, 80.43, or 234,768.98. (although don't input commas's in ruby for large numbers.).

**3.What is the difference between a float and integer division? How would you explain the difference to someone who doesnt know anything about programming.**

What is most important is that using a float is the ONLY way to return the EXACT value of a division. The answer to 9 / 2 (on paper) is 4.5. However, RUBY will return 4 unless you write the problem as 9.0 / 2.0. Adding the decimal point and zero is how you specify you are working with floats. If you do math with integers, you will always get the the answer rounded DOWN to the nearest whole integer.

For example, 11 / 2 in ruby math is 5. If I want to buy 2 dollar candy bars for a group of people and I have 11 dollars, I can only get 5 candy bars, I can't buy 5 and a half candy bars. The logic is that is most practical applications of daily math, whole objects can't be divided.

## Release 2 - Mini Challenges

**Hours in a year**

```ruby
puts 24 * 365
```

**Minutes in a decade**

```ruby
puts (60 * 24) * (365*10)
```

## Release 7 - Relection

**1.How does Ruby handle addition, subtraction, multiplication, and division of numbers?**

Addition - Numbers can be added to eachother and strings can be added to eachother as well. However, you cannot add a string to a number.

```
'stuff' + 3
```

This ^ would give you a conversion error.

Subraction - Follow same rules as above, you can't subract a number from a string.

Multiplication - You can multiple numbers by numbers but you cannot multiple a string by a string. However, you can use the multiplication operation to multiple strings.

```
'cat' * 3 = catcatcat
3 * 'cat' **note** this is not valid, you cannot print 3, cat times.
```

 Division - The most important thing to know is that if you use integers (whole numbers w/ out decimals) that the result of division will be the rounded *DOWN* to the nearest integer. You must use floats to get exact decimal answers. You cannnot divide strings or divide string by numbers.

**2.What is the difference between integers and floats?**

Integers are whole numbers and floats are fractional numbers.

**3.What is the difference between integer and float division?**

As described in question 1, when you divide two integers, the result will be rounded down unless the answer is also an integer.

```
example = 11 / 2

Here, example would be equal to 5, not 5.5
```

**4.What are strings? Why and when would you use them?**

Strings are a type of value for words, symbols, and letters. If I have a common sentence or statement I want to repeat, I would have to store that value as a string.

```ruby
response = 'Contratulations ' + customer_name, '.  You are a winner!'
```

The above example is combing two strings and a variable to form a sentence.

**5.What are local variables? Why and when would you use them?**

Local variables are a way of describing the scope of a variable. If a variable is "local" to a method that means it is only understood within the method. If I define a method people and within the method I use to variable men = 3 and women = 3, then ouside of the method I try to puts men, there will be no value associated with men. For this reason, in a method I don't have to make sure the a certain variable isn't already used in the program.

**6.How was this challenge? Did you get a good review of some of the basics?

This is a great review! Although, I do find the instructions misleading. 4.2.1, 4.2.2, and 4.2.3 all say to submit the links for each exercise, but there is only 1 area to submit, which is on the 4.2 page, and it is reserved for this file. So I will paste links below on this page.

[Challenge 4.2.1](https://github.com/Heintzdm/phase-0/blob/master/week-4/defining-variables.rb)

[Challenge 4.2.2](https://github.com/Heintzdm/phase-0/blob/master/week-4/simple-string.rb)

[Challenge 4.2.3](https://github.com/Heintzdm/phase-0/blob/master/week-4/basic-math.rb)

