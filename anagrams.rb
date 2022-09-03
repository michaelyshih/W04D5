def first_anagram?(str1, str2)
    # sub_arr = []
    # (0...str1.length).each do |i| #O(n^2)
    #     (i...str1.length).each do |j|
    #         sub_arr << str1[i..j]
    #     end
    # end

    perms = str1.split("").permutation(2).to_a #O(n!)
    # p perms
    perms.include?(str2.split(""))
end

# p first_anagram?("abc", "cba")

def second_anagram?(str1,str2)
    str3 = str2.dup #O(n)

    str1.each_char do |char| #O(n)

        idx = str3.index(char) #O(n)
        if idx == nil
            return false
        else
            str3.slice!(idx) #O(n)
        end

    end

    str3.empty? #O(n)
end

# p second_anagram?("abc", "cba")

def third_angram?(str1,str2) #O(log n), O(n log n) ?
    str1.split("").sort == str2.split("").sort
end

# p third_angram?("abc", "cba")

def fourth_anagram?(str1, str2)
    hash1 = Hash.new(0)
    # hash2 = Hash.new(0)
    str1.each_char { |char| hash1[char] += 1 }
    str2.each_char { |char| hash1[char] -= 1 }
    hash1 == hash2
end

p fourth_anagram?("abc", "cba")


