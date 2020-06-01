# This problem was asked by Stripe.

# Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.

# For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

# You can modify the input array in-place.

def first_missing_positive(input)
  sorted_input = input.sort.uniq
  positive_numbers = []

  sorted_input.each do |number|
    unless number <= 0
      positive_numbers << number
    end
  end

  i = 0
  while i < positive_numbers.length
  if positive_numbers[i] == positive_numbers.length
    p positive_numbers.length + 1
    break
  end
  if positive_numbers[i] == i + 1
  else
    p i + 1
    break
  end
  i += 1
  end
end

first_missing_positive([-9,-900, 0,1,2,3,4,5,6,6,7,8,8,9,9,10,11,-9])




