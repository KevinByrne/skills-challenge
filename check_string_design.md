{Problem} Method Design Recipie

1. Describe the problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the method signature
Include the name of the method, its parameters, return value, and side effects

check_string(text)

return value - boolean true or false
what if not capitalized?
what if no hashtag?

3. Create Example of tests
Make a list of examples of what the method will take and return.

check_string('') = return an error - no text added
check_string('Add this to my #TODO list') = return true
check_string('Add this to my list') = return false
check_string('Add this to my todo list') = return false
check_string('Add this to my #todo list) = return true


4. Implement the behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.