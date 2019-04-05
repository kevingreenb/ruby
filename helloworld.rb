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

def palindrome?(str)
    i = str.length-1
    ret = []
    while i >= 0
        ret << str[i]
        i -= 1
    end
    ret.join("") == str
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

p palindrome_substrings("abracadabra") 