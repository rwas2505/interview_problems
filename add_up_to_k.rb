# This problem was recently asked by Google.

# Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

def check_sum(numbers, k)
  index = 0
  while true
    while index < numbers.length
      second_index = index + 1
      while second_index < numbers.length
        result = numbers[index] + numbers[second_index]
        if result == k
          p "TRUE"
          return false
        end
        second_index += 1
      end
      index += 1
    end
    p "FALSE"
    return false
  end
end

check_sum([10,7,4,2,1,9,55,1000], 1055)
  