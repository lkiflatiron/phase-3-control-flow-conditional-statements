def admin_login(username, password)
  # your code here
  return "Access denied" unless password == "12345" && (username == 'admin' || username == 'ADMIN')
  "Access granted"
end

def hows_the_weather(temperature)
  # your code here
  case 
  when temperature < 40
    "It's brisk out there!"
  when temperature >= 40 && temperature <= 65
    "It's a little chilly out there!"
  when temperature > 85
    "It's too dang hot out there!" 
  else
    "It's perfect out there!"
  end
end

def fizzbuzz(num)
  # your code here
  buzzy = ""
  buzzy += "Fizz" if num % 3 == 0
  buzzy += "Buzz" if num % 5 == 0
  buzzy == "" ? num : buzzy
end

def calculator(operation, num1, num2)
  # your code here
  case operation
  when "+"
    num1 + num2
  when "-"
    num1 - num2
  when "*"
    num1 * num2
  when "/"
    num1 / num2
  else
    puts "Invalid operation!"
    nil
  end
end

puts admin_login("sudo", "12345")
# => "Access denied"
puts admin_login("admin", "12345")
# => "Access granted"
puts admin_login("ADMIN", "12345")
# => "Access granted"

puts hows_the_weather(33)
# => "Brisk!"
puts hows_the_weather(99)
# => "Too dang hot"
puts hows_the_weather(75)

puts fizzbuzz(1)
# 1
puts fizzbuzz(2)
# 2
puts fizzbuzz(3)
# Fizz
puts fizzbuzz(4)
# 4
puts fizzbuzz(5)
# Buzz
puts fizzbuzz(15)

puts calculator("+", 1, 1)
# => 2
puts calculator("-", 3, 1)
# => 2
puts calculator("*", 3, 2)
# => 6
puts calculator("/", 4, 2)
# => 2
puts calculator("nope", 4, 2)
# "Invalid operation!"
# => nil