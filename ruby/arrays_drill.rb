def add_to_array(x, y)
  two_arrays = x + [y]
  p two_arrays
end


def build_array(item_one, item_two, item_three)
  method_array = [item_one, item_two, item_three]
  p method_array
end


my_array = []

p my_array

my_array.insert(0, "June", true, false, 19, "May")

p my_array

my_array.delete_at(2)

p my_array

my_array.insert(2, "finally")

p my_array

my_array.shift

p my_array

boolean = my_array.include?("June")
  puts "Item present?: #{boolean}"

another_array = ["Monday", "Tuesday", "Friday"]

combined_arrays = my_array + another_array

p combined_arrays


add_to_array([1, 2, 4], 9)
add_to_array(["Monday", "Wednesday", "Friday"], true )

build_array("one", "two", "three")