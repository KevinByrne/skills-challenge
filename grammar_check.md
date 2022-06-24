{Problem} Method Design Recipie

1. Describe the problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

needs to -
take a string as an argument
check first characters within a sentence to see if starts with capital letter
check last character of last sentence to check if it is an appropriate puncuation mark ( . ! ? )
check last charcter of current sentence to check if it has an appropriate punctuation mark

2. Design the method signature
Include the name of the method, its parameters, return value, and side effects

method name = grammar_check(string)
return value = true / false boolean to see if grammar is correct.

3. Create Example of tests
Make a list of examples of what the method will take and return.

grammar_check(This is a sentence.) => True
grammar_check(This is a sentence) => False 
grammar_check(this is a sentence.) => False
grammar_check(THIS is a sentence.) => True
grammar_check(This is a sentence!) => True
grammar_check(This is a sentence?) => True


4. Implement the behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.