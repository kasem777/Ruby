=begin
    Pick Primes
    Write a method pick_primes that takes in an array of 
    numbers and returns a new array containing only the prime numbers.
=end
def pick_primes(numbers)
    # new_arr = []
    # numbers.each do |number|
    #     if is_prime?(number)
    #         new_arr << number
    #     end
    # end
    # return new_arr
return numbers.select{|number| is_prime?(number)}
end

def is_prime?(num)
    if num < 2
        return false
    end
    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts