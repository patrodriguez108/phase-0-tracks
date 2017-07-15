# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]


def create_list(grocery)
  list = {}
  array = grocery.split(' ')
    array.each do |item|
    list[item] = 1
    end
  p list
end

puts "Grocery Hash"

list =  create_list("bananas pasta avocado toothpaste")

def add_list(list, item, quantity)
  list[item] = quantity
end

puts "Addition of items"

add_list(list, "beef", 1)
add_list(list, "lemonade", 2)
add_list(list, "tomatoes", 3)
add_list(list, "onions", 1)
add_list(list, "ice cream", 4)
p list

def remove(list, item)
  list.delete(item)
end

puts "Subtraction of items"

remove(list, "toothpaste")
remove(list, "lemonade")
p list

def count(list, item, new_quantity)
  list[item] = new_quantity
end

puts "Update quantity"

count(list, "bananas", 4)
count(list, "pasta", 7)
count(list, "avocado", 3)
count(list, "beef", 2)
count(list, "ice cream", 1)
p list

def print(list)
  list.each do |item, new_quantity|
    puts "The amount of #{item} we need is #{new_quantity}"
  end
end

puts "Official grocery list"

print(list)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
#  - write out method scope
#  - print list
#  -
#  - end method
# output: print method

# Method to remove an item from the list
# input: write out empty hash (?)
# steps:
# - call hash
# - argument to remove item from list
# - end method
# output: print new list

# Method to update the quantity of an item
# input: new hash (?)
# steps:
# - argument to count the new hash
# - end method
# output: print hash with quantity of items

# Method to print a list and make it look pretty
# input: hash
# steps:
# - list hash with each item in a different line with quantity
# - end method
# output: print hash