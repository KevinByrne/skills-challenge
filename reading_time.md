{Problem} Method Design Recipie

1. Describe the problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

user can read 200 wpm
take a string of a given amount
calculate how long it would take to read in minutes based on 200 wpm
return value would be a string with an integer interpolation


2. Design the method signature
Include the name of the method, its parameters, return value, and side effects

total_time = time_to_read(text)
return value is the number of words / wpm

side effect - what if less than users wpm does it return half minutes or a string informing will take less than a minute?

estimate reading time based on reading speed of 200 words per minute

3. Create Example of tests
Make a list of examples of what the method will take and return.

time_to_read("text = 200") => 1 this is the expected return value based on 200 wpm
time_to_read("text = 400") => 2 this is the expected return value based on 200 wpm
time_to_read("text = 513") => 2.565 this is the expected return value based on 200 wpm and an odd number of word in the text (this would mean using .to_f method)
time_to_read("only three words") => 3 expecting the method to count the number of words - this may return a string as an else conditional to inform user that it will take less than one minute to read the words.

4. Implement the behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.