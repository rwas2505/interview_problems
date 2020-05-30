# This problem was asked by Uber.

# Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.

# For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].

# Follow-up: what if you can't use multiplication?


# input = [1, 2, 3, 4, 5]

def multiply_all_but_self(input)
  i = 0
  product = 1
  output_array = []
  while i < input.length
    original = input[i]
    input[i] = 1
    input.each do |number|
      product *= number
    end
    output_array << product
    product = 1
    input[i] = original
    i += 1
  end
  p output_array
end

multiply_all_but_self([1, 2, 3, 4, 5])