

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




