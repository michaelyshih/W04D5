def my_minI(arr)
    arr.each_with_index do |ele1,i1|
        # arr.each_with_index do |ele2, i2|
        #     if i2 > i1 && ele2 > ele1
        #         min = ele1
        #     end
        # end
        return ele1 if (i1+1...arr.length).none? {|i2| ele1 > arr[i2] } #O(n^2)
    end
end


def my_minII(arr)
    min = arr.first
    arr.each {|ele| min = ele if ele < min} #O(n)
    min
end

# p list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_minII(list)  # =>  -5;
# p my_minI(list)  # =>  -5;




def largest_contiguous_subsumI(arr)
    sub_arr = []
    (0...arr.length).each do |i| #O(n^2)
        (i...arr.length).each do |j|
            sub_arr << arr[i..j]
        end
    end
    sub_arr.map! { |sub| sub.sum }.max #O(n)
end

# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsumI(list) # => 8 (from [7, -6, 7])

# list = [-5, -1, -3]
# p largest_contiguous_subsumI(list) # => -1 (from [-1])

def largest_contiguous_subsumII(arr)
    max_arr = [arr.first]
    arr.each_with_index do |num,i|
        if i != 0
            max_arr << max(num, max_arr[-1] + num)
            # max_arr = curr_max if curr_max > max_arr
        end
    end
    max_arr.max
end

def max(n1,n2)
    if n1 > n2
        return n1
    else
        return n2
    end
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsumII(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsumII(list) # => -1 (from [-1])
