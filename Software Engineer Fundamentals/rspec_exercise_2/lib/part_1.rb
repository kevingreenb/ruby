def partition(arr, num)
    less = []
    greater = []
    ret = []
    i = 0
    while i < arr.length
        if arr[i] < num
            less << arr[i]
        else 
            greater << arr[i]
        end
    i += 1
    end
    ret << less
    ret << greater
end

def merge(hash1, hash2)
    ret = {}
    hash1.each do |val|
        ret[val[0]] = val[1]
    end
    hash2.each do |val|
        ret[val[0]] = val[1]
    end
    ret
end

def replaceVowels(str)
    vowel = "aeiou"
    ret = []
    str.each_char do |val|
        if vowel.include?(val.downcase)
            ret << "*"
        else
            ret << val
        end
    end
    ret.join("")
end
def censor(str, arr)
    arr = arr.join(" ")
    str = str.split(" ")
    ret = []
    str.each do |val|
        if arr.include?(val.downcase)
            ret << replaceVowels(val)
        else
            ret << val
        end
    end
    ret.join(" ")
end

def power_of_two?(num)
    i = 2
    if num == 1
        return true
    end
    while i < num
        if num%2 != 0
            return false
        end
        i *= 2
    end
    return i == num
end

def palindrome?(str)
    i = str.length-1
    ret = []
    while i >= 0
        ret << str[i]
        i -= 1
    end
    ret.join("") == str
end

def substrings(str)
    ret = []
    ret2 = []
    i = 0
    while i < str.length
        j = i
        while j < str.length
            ret << str[i..j]
            j += 1
        end
        ret2 << ret
        i += 1
    end
    ret.flatten
end

def palindrome_substrings(str)
    arr = substrings(str)
    ret = []
    arr.each do |val|
        if palindrome?(val) && val.length > 1
            ret << val
        end
    end
    ret
end