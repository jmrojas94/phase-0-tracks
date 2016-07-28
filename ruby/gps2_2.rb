# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string into an array 
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: Returns the grocery list hash.

def create_list(grocery_items)
  grocery_list = {}
  grocery_items_arr = grocery_items.split(' ')
  grocery_items_arr.each do |item|
    grocery_list[item] = 1
  end
  p grocery_list
end

groceries = create_list("")
# groceries = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: hash, item name and optional quantity
# steps: 
  # add item as a key
  # add quantity as a value
# output: Return the updated grocery list hash.

def add_item(hash, item_name, quantity)
  hash[item_name] = quantity
  p hash
end

add_item(groceries, "lemonade", 2)
add_item(groceries, "tomatoes", 3)
add_item(groceries, "onions", 1)
add_item(groceries, "ice cream", 4)

# add_item(groceries, "orange", 2)
  
# Method to remove an item from the list
# input: hash, item name
# steps:
  # delete key with the same item name
# output: Return the updated grocery list.

def remove_item(hash, item_name)
  hash.delete(item_name)
  p hash
end
remove_item(groceries, "lemonade")

# remove_item(groceries, "carrots")

# Method to update the quantity of an item
# input: hash, item name, and quantity
# steps:
  # reassign new value to given item name key
# output: Return the updated hash.

def update_quantity(hash, item_name, quantity)
  hash[item_name] = quantity
  p hash
end

update_quantity(groceries, "ice cream", 1)
# update_quantity(groceries, "apples", 3)

# Method to print a list and make it look pretty
# input: hash
# steps:
  # iterate through the hash and print item and quantity
# output: Key and values in a hash.

def print_list(hash)
  hash.each do |item, quantity|
    puts "#{item} = #{quantity}"
  end
end

print_list(groceries)