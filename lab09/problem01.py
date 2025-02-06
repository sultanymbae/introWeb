#1. Exception handling
try:
    print(x)
except:
    print("An exception occurred")

#2. Many exceptions

try:
    print(x)
except NameError:
    print("Variable x is not defined")
except:
    print("Something else went wrong")

#3. Else
try:
    print("Hello")
except:
    print("Something went wrong")
else:
    print("Nothing went wrong")

#4. Finally
try:
    print(x)
except:
    print("Something went wrong")
finally:
    print("The 'try except' is finished")

try:
    f = open("demifile.txt")
    try:
        f.write("Lorum Ipsum")
    except:
        print("Something went wrong when writing to file")
    finally:
        f.close()
except:
    print("Something went wrong when opening the file")

#5. Raise an exception
x = -1

if x < 0:
    raise Exception("Sorry, no numbers below zero")

x = "hello"
if not type(x) is int:
    raise TypeError("Only integers are allowed")