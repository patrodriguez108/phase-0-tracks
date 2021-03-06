# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.each do |list|
  puts '*' + list
end

# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?
# ----
def find(array, item)
  puts "Checking for #{item}..."
  array.each do |items|
    if items.include?(item)
      puts "Yes, you have a #{item}"
    end
  end
  if !array.include?(item)
    puts "No, you don't have any #{item}"
  end
end

find(zombie_apocalypse_supplies, 'boots')
find(zombie_apocalypse_supplies, 'hatchet')
find(zombie_apocalypse_supplies, 'lemons')
find(zombie_apocalypse_supplies, 'water jug')

# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.
# ----
lighter_supplies = []
zombie_apocalypse_supplies.each do |new_supplies|
  zombie_apocalypse_supplies.delete_if { |new_supplies| new_supplies.length > 7 }
  lighter_supplies << new_supplies
end
p lighter_supplies

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
new_inventory = []
other_survivor_supplies.each do |distribute|
  new_inventory.push(distribute)
end
lighter_supplies.each do |add_items|
  new_inventory.push(add_items)
end
p new_inventory

# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each do |animal, year|
  puts "* #{animal} - #{year}"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.
# ----
extinct_animals.each do |animal, year|
  extinct_animals.delete_if { |animal, year| year >= 2000 }
end
p extinct_animals

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.
# ----
update_extinct_animals = {}
extinct_animals.each do |animal, year|
  update_extinct_animals[animal] = year.to_i - 3
end
p update_extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")
# ----
def is_extinct(hash, animal)
  hash.each do |species, year|
    if species == animal
      p true
    end
  end
  if !hash.has_key?(animal)
    p false
  end
end

is_extinct(update_extinct_animals, "Andean Cat")
is_extinct(update_extinct_animals, "Dodo")
is_extinct(update_extinct_animals, "Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each
# ----

def remove_notextinct(hash, item, value)
  not_extinct = []
  hash.each do |animal, year|
    if animal == item && year == value
      not_extinct.push(animal) && not_extinct.push(year)
    end
  end
  p not_extinct
  hash.delete(item)
  p hash
end

remove_notextinct(extinct_animals, "Passenger Pigeon", 1914)