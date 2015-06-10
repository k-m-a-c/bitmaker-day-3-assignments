# Author: Kevin McLoughlin
#
# Exercise 5: A simple Fahrenheit to Celsius
# temperature converter

puts "Type in the temperature, in Fahrenheit, that you'd like to convert to Celsius."

temp_in_fahrenheit = gets.chomp.to_i

def fahrenheit_to_celsius (temp_in_fahrenheit)

	temp_in_celsius = (temp_in_fahrenheit - 32) * 5.0 / 9.0

	return temp_in_celsius.round(1)
end

temp_in_celsius = fahrenheit_to_celsius(temp_in_fahrenheit)

puts "#{temp_in_fahrenheit} degrees Fahrenheit is equal to #{temp_in_celsius} degrees Celsius."