# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"

def isPrime?(num)
    if num == 2
        true
    end
    (2...num).each do |val|
        if num%val == 0
           return false
        end
    end
    return true
end

def largest_prime_factor(num) #expect(largest_prime_factor(15)).to eq(5)
    i = num-1
    if isPrime?(num)
        return num
    end
    while i > 0
        if num%i == 0
            if isPrime?(i)
                return i
            end
        end
        i -= 1
    end
end

def unique_chars?(str) #expect(unique_chars?("computer")).to eq(true)
    temp = {}
    str.each_char do |val|
        if temp.has_key?(val)
            return false
        else   
            temp[val] = val
        end
    end
    return true
end

def dupe_indices(arr) #expect(dupe_indices(["a", "b", "c", "c", "b"])).to eq({"b"=>[1,4], "c"=>[2,3]}
    ret = Hash.new(0)
    ret2 = Hash.new(0)
    arr.each_with_index do |val, i|
        if ret.has_key?(val)
            ret[val] = ret[val] << i
            ret2[val] = ret[val]
        else
            ret[val] = [i]
        end
    end
    return ret2
end
p dupe_indices(["a", "b", "c", "c", "b"])

def ana_array(arr1, arr2) #expect(ana_array(["cat", "dog", "cat"], ["dog", "cat", "mouse"])).to eq(false)
    if arr1.length != arr2.length
        return false
    end
    d = {}
    arr1.each do |val|
        d[val] = val
    end
    arr2.each do |val|
        if !d.has_key?(val)
            return false
        end
    end
    return true
end