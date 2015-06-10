# Author: Kevin McLoughlin
#
# Exercise 6: Makin' a sick grocery list

# Yea, I don't fuck around.
grocery_list = [
  "Dom Perignon",
  "Flank Steak",
  "Valpolicella",
  "Red Pepper",
  "White Onion",
  "Portobello Mushroom",
  "HP Sauce",
  "Dijon Mustard",
  "Asparagus",
  "Romaine Lettuce",
  "Cherry Tomatoes",
  "Gorgonzola Cheese",
  "Prosciutto",
  "Breton Crackers",
  "Camembert Cheese",
  "Vanilla Ice Cream",
  "Powdered Sugar",
  "Fresh Rasperries",
  "Chocolate Sauce"
]

# Because without the cute '*', you might accidentally
# miss an item while shopping at the store.
# Which would = DISASTER.
def output_grocery_list(grocery_list)

  grocery_list.sort!.each do |item|

    puts "* #{item}"
  end
end

grocery_list << "Basmati Rice" # White rice is for suckers

output_grocery_list(grocery_list)
number_of_grocery_list_items = puts "\nYou have #{grocery_list.count} items.\n"

# output_grocery_list
# number_of_grocery_list_items

puts "Yo moron, you got bananas? (I know you ARE bananas, but have you got 'em?)"

curious_george = gets.chomp.downcase

def grocery_list_check(grocery_list, curious_george)

  if grocery_list.include?('Bananas') == false && curious_george == "yes"
    puts "\nYou IZ bananas. Don't forget to pick some up today."

  elsif grocery_list.include?('Bananas') == false && curious_george == "no"
    puts "\nWell, I'm glad you've established your own sanity, but don't forget to pick up some bananas today."

  elsif grocery_list.include?('Bananas') == true && curious_george == "yes"
    puts "\nGood job. You're both sane, and awash in bananas."

  else grocery_list.include?('Bananas') == true  && curious_george == "no"
    puts "\nYou have bananas already. Keep your shit together."

  end
end

grocery_list_check(grocery_list, curious_george)

puts "\nAlso, make sure you get the best #{grocery_list[8]} they have."
puts "\nLooking around and can't find the damn Prosciutto. Losin' it and giving myself a new list."

grocery_list.delete("Prosciutto")

output_grocery_list(grocery_list)
puts "\nYou now have #{grocery_list.count} items."