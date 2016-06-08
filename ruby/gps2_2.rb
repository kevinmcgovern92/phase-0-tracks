# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # method with parameters, with the keys and values
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: Use the store method to add an item and its value
# output: the hash with the new item

# Method to remove an item from the list
# input: item to remove
# steps: use the delete method
# output: the hash without the item selected

# Method to update the quantity of an item
# input: the new value to be updated
# steps: assign the new value to the hash
# output: the hash with the new value of the selected item

# Method to print a list and make it look pretty
# input: the actual hash
# steps: .each method to iterate through the hash and print using a block
# output: A string
def print_list_pretty (grocery_list)
  grocery_list.each do |item, value|
    puts "#{item} : #{value}"
  end
end


def update_item (grocery_list, item, value)
  grocery_list[item] = value
  p grocery_list

  end

def delete_item (grocery_list, item)
grocery_list.delete(item)
p grocery_list

end


def add_item (grocery_list, item, value=1)

    grocery_list.store(item, value)
    p grocery_list

  end

def new_list (list)
  array_list = list.split(' ')

  grocery_list = {

  }

    grocery_list.default(1)

  array_list.each do |i|
    grocery_list.store(i, 1
      )
  end
p grocery_list


  add_item(grocery_list, "ice cream", 4)
  delete_item(grocery_list, "lemonade")
  update_item(grocery_list, "tomatoes", 3)
  update_item(grocery_list, "ice cream", 1)
  print_list_pretty(grocery_list)

  end

  new_list("lemonade tomatoes onions")

  # Pseudocode can be much more structured, and that can help you to conceptualize code more easily before you actually start writing it. Specifically, things like thinking about methods, conditionals, input, output, etc.
  # Arrays are easier to manipulate, but hashes allow for more meaningful organization of information.
  # A method returns output.
  # You can pass pretty much anything as an argument to a method - an array, a hash, a string, integer, float, etc.

  #You can use naming conventions of variables shared by multiple methods to pass information between methods. This ensures that there are no "unknown variable" errors. For example, in this exercise, Marco and I called our hash grocery_list. So when we needed to use grocery_list in other methods, we passed it as an argument and the method understood that the method was interacting with a hash.
  # How to have methods share variables/information was certainly solidified here. Although I would imagine that it will require more practice for me to truly understand how this works in every case. With regards to the specifics of this challenge, I think the only thing that still confuses me is that I sometimes mix up the methods of Array and Hash classes, which can slow things down as I double check every method.