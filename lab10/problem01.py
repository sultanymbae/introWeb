import math
import random
from datetime import datetime, timedelta
from flask import Flask
import requests
import matplotlib.pyplot as plt

#1
radius = 10
area = math.pi * math.pow(radius, 2)
print(f"Area of the circle: {area}")

#2
products = ["bread", "milk", "cheese", "sausage"]
meal = random.choice(products)
print(f"Meal for today is {meal}")

#3
now = datetime.now()
print(f"Current time is {now}")

future_date = now + timedelta(days=7)
print(f"Date after 7 days: {future_date}")

#4
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello< Flask!"
if __name__ == "__main__":
    app.run(debug=True)

#5
response = requests.get("http://api.github.com")
print(response.status_code)
print(response.json())

#6

x = [1, 2, 3, 4, 5]
y = [2, 4, 6, 8, 10]
plt.plot(x, y)
plt.title("Line Graph")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
plt.show()