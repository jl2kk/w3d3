
# require "byebug"
def itr_range(start,max)
    nums = []
    (start...max).each {|i| nums << i}
    return nums
end 


def range(start,max)
    return [] if max <= start
    return range(start,max-1) << (max-1)

end 

$count = 0
def exponent1(num,exp)
    
    return 1 if exp == 0

    return num * exponent1(num,exp-1)
end 


def exponent2(num,exp)
    $count+=1 
    return 1 if exp == 0 
    return num if exp == 1 
    
    if exp.even?
        return exponent2(num, exp/2) ** 2

    else 
        return num * (exponent2(num, (exp -1) / 2) ** 2)

    end 
end 

# exponent2(5,256)
# p $count


def deep_dup(arr)
  dup_arr = []
  return [] unless arr.is_a?(Array)
  
  arr.each do |ele|
    if ele.is_a?(Array)
        dup_arr << deep_dup(ele)
    else 
        dup_arr << ele.dup
    end

end
  dup_arr

end


# robot_parts = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"]
# ]

#  dup = deep_dup(robot_parts)

#  dup[0] << "LEDs"

#  p dup
#  p robot_parts

def itr_fibonacci(n)

    sequence = [0,1,1]
    sequence.take(n )if n <= 3
    (2..n).each do |i|
        sequence << (sequence[i] + sequence[i-1])
    end
    return sequence

end 

def rec_fibonacci(n)
    
    return [0,1,1].take(n) if n <= 3

    n_fib = rec_fibonacci(n-1)
    n_fib << n_fib[-2] + n_fib[-1]
end 

def bsearch(arr,target)
    sorted = arr.sort 
    mid = sorted.length / 2

    if sorted[mid] == target
        return arr.index(target)
    end 
    #  debugger
    if target < sorted[mid]
        return bsearch(sorted[0...mid], target)
    elsif target > sorted[mid]
        return bsearch(sorted[mid..-1], target)
    end
    # nil

end 

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort(arr)
end 

def subsets(arr)
end 

def permutations(arr)
end 



    
    






