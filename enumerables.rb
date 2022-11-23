require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # spicy_foods.map{ |food| food.name} will not work, because this returns an array of hashes! How do we access hashes Trey? With BRACKET NOTATION! So instead let's use the following: 
  spicy_foods.map{ |food| food[:name]}
  # binding.pry
  # your code here
end

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # binding.pry
  spicy_foods.filter{ |food|  food[:heat_level] > 5 }
  # your code here
end

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"

# I'm struggling to access the values correctly here. I need to figure out how to grab EACH of the hash keys and then use string interpolation(?). .map works to grab the key values but it doesnt work with .each... Maybe I need more methods here? Hmmm. Let's work from left to right and grab a little at a time. 

# Doesn't work:
# spicy_foods.map { |food| print food[:name]} returns: [nil, nil, nil]
# spicy_foods.map { |food| puts food[:name]} returns: [nil, nil, nil]

# ???? Why does this spicy_foods.each { |food| food[:name]} grab EACH hash instead of each value of each hash? Is it because only .map/.filter return an array?... Hmm. I thought puts would've printed each hash value for names.. I can look at my old lab but I really want to understand HOW to access this and WHY my ways currently are not working. Before just looking at the right answer and saying oh.. Okay. 


def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food| 
  puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{'🌶' *food[:heat_level]}" 
  end
  # binding.pry

  # your code here
end



# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food| 
  food[:cuisine] == cuisine
  end
end

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  spicy_foods.map.sort_by do |food| food[:heat_level] 
  end
  # your code here
end
# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶 
# HINT: Try to use methods you've already written to solve this! 

def print_spiciest_foods(spicy_foods)
  # binding.pry
  assorted_spicy_foods_by_heat_level = spiciest_foods(spicy_foods)
  
  # filtered_spicy_foods = 
  # sorted_spicy_foods.filter do |food|
  #   food[:heat_level] > 5
  # end

  print_spicy_foods (assorted_spicy_foods_by_heat_level)

end

# puts print_spiciest_foods (spicy_foods)

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  total_heat = spicy_foods.sum { |food| food[:heat_level]}
  total_heat / spicy_foods.length

  # your code here
  # enu.sum {|obj| obj * 5}
end
puts average_heat_level spicy_foods
