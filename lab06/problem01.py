#1. User input for different types
integer_input = int(input("Enter a number: "))
float_input = float(input("Enter a float: "))
string_input = input("Enter a string: ")

print(type(integer_input)) #Output: <class 'int'>
print(type(float_input))   #Output: <class 'float'>
print(type(string_input))  #Output: <class 'str">

#2. Type Conversion and Dictionary
text = '123'
number = int(text)         #Convert to integer
number_float = float(text) #Convert to float

print(type(number))        #Output: <class 'int'>
print(type(number_float))  #Output: <class 'float>

person = {
    "name": "Bob",
    "age": 30
}
print(person["name"])      #Output: Bob

#3. Operation on Sets
my_set = {1, 2 ,3}
my_set.add(4)              #Add element
my_set.remove(2)           #Remove element
print(3 in my_set)         #Check membership, Output: True
