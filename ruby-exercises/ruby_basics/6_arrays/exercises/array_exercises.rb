def nil_array(number)
  Array.new(number)
end

def first_element(array)
  unless array.empty?
    array[0]
  else
    nil
  end
end

def third_element(array)
  if array.length >= 3
    array[2]
  else
    nil
  end
end

def last_three_elements(array)
  if array.length < 3
    array.last(array.length)
  else
    array.last(3)
  end
end

def add_element(array)
  array.push("Cheeseburger")
end

def remove_last_element(array)
  # Step 1: remove the last element from the array
  array.pop unless array.length == 0

  # Step 2: return the array (because Step 1 returns the value of the element removed)
  array
end

def remove_first_three_elements(array)
  # Step 1: remove the first three elements
  array.shift(3)
  # Step 2: return the array (because Step 1 returns the values of the elements removed)
  array
end

def array_concatenation(original, additional)
  # return an array adding the original and additional array together
  original + additional
end

def array_difference(original, comparison)
  # return an array of elements from the original array that are not in the comparison array
  original - comparison
end

def empty_array?(array)
  # return true if the array is empty
  array.empty?
end

def reverse(array)
  # return the reverse of the array
  array.reverse
end

def array_length(array)
  # return the length of the array
  array.length
end

def include?(array, value)
  # return true if the array includes the value
  array.include?(value)
end

def join(array, separator)
  # return the result of joining the array with the separator
  array.join(separator)
end
