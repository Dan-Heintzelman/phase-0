# Assignment 4.2 - Numbers and Letters

**1.What does puts do?**

Puts stands for "put string" and it literally means that it is printing the output to the console and then starting a new line. It does NOT return any value.

**2.What is an integer? What is a float**

An integer is a whole number, or a number that does not have a decimal such as 3 or 500, 8000.

A float actually stands for a "floating point number" and it is a number that is not whole and has a decimal value such as 4.5, 80.43, or 234,768.98. (although don't input commas's in ruby for large numbers.).

**3.What is the difference between a float and integer division? How would you explain the difference to someone who doesnt know anything about programming.**

What is most important is that using a float is the ONLY way to return the EXACT value of a division. The answer to 9 / 2 (on paper) is 4.5. However, RUBY will return 4 unless you write the problem as 9.0 / 2.0. Adding the decimal point and zero is how you specify you are working with floats. If you do math with integers, you will always get the the answer rounded DOWN to the nearest whole integer.

For example, 11 / 2 in ruby math is 5. If I want to buy 2 dollar candy bars for a group of people and I have 11 dollars, I can only get 5 candy bars, I can't buy 5 and a half candy bars. The logic is that is most practical applications of daily math, whole objects can't be divided.

## Mini Challenges

**Hours in a year**

```ruby
puts 24 * 365
```

**Minutes in a decade**

```ruby
puts (60 * 24) * (365*10)
```

