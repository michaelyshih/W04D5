require "byebug"
def two_sumI(arr,tar)
    (0...arr.length).each do |num1| #O(n^2)
        (num1+1...arr.length).each do |num2|
            return true if arr[num1] + arr[num2] == tar
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# p two_sumI(arr, 6) # => should be true
# p two_sumI(arr, 10) # => should be false

def two_sumII(arr,tar)
    i = 0
    j = arr.length-1
    arr.sort!


    while i < j #if sum IS target and i and j are within length
        # debugger
        sum = arr[i] + arr[j]
        if sum < tar
            i += 1
        elsif sum > tar
            j -= 1
        else
            return true
        end
    end
    false
end

arr = [0, 1, 5, 7]

p two_sumII(arr, 6) # => should be true
p two_sumII(arr, 10) # => should be false

def two_sumIII(arr,tar)
end
