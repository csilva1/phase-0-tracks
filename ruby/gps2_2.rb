#GPS 2.2 assignment pair with Jung
# Pseudocode:

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # store the grocery items into a data structure (Hash)
  # set default quantity (do this when creating the hash)
  # print the list to the console [can you use one of your other methods here?] (create print_grocery method later on)
# output: [what data type goes here, array or hash?] (Hash[grocery_item] = amount)

# Method to add an item to a list
# input: item name and optional quantity
# steps: assign the item name to the grocery hash and IF quantity is not given, THEN add just 1 (default amount), ELSIF quantity is given THEN add x amount
# output: return the item and the quantity

# Method to remove an item from the list
# input (parameters): grocery item and the quantity
# steps: access the grocery hash and IF no quantity is given, THEN remove the item all together ELSIF quantity is given, THEN just remove x amount
# output: updated list

# Method to update the quantity of an item
# input: grocery item and updated quantity
# steps: access the grocery hash at the specific item and update new quantity
# output: updated list

# Method to print a list and make it look pretty
# input: grocery list
# steps: create a "box" to display/print the grocery items ( "-" * 20 );
    # print out EACH grocery item and the quantity
# output: printed out grocery list

# ------------------------------

grocery_list = Hash.new

def make_grocery_list(grocery_items)
  grocery_items.split(' ').each do |element|
    grocery_list[element] = 1
  end

  p display_grocery_list
end

def display_grocery_list(list)
  p list
end

def add_grocery(item_name, quantity = 1)
  grocery_list[item_name] += quantity

  display_grocery_list(grocery_list)
end

def remove_grocery(item_name, quantity = 1)
  grocery_list[item_name] -= quantity

  display_grocery_list(grocery_list)
end

def update_grocery_amount(item_name, quantity)
  grocery_list[item_name] = quantity

  display_grocery_list(grocery_list)
end
