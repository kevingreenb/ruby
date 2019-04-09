def hipsterfy (word)
    vowels = "aeiou"
    word = word.split("")
    i = word.length-1
    while i > 0
        if vowels.include?(word[i])
            word[i] = ""
            break
        end
        i += -1
    end
    word.join("")
end


def vowel_counts(str)
        vowels = "aeiou"
        ret = Hash.new(0)
        str.downcase!
        str.each_char do |val|
            if vowels.include?(val)
                ret[val] += 1
            end
        end
        ret
end

def caesar_cipher(str, num)
    alphabet= "abcdefghijklmnopqrstuvwxyz"
    str.downcase!
    str = str.split("")
    i = 0
    while i < str.length
        if alphabet.include?(str[i])
            str[i] = alphabet[(alphabet.index(str[i])+num)%26]
        end
        i+=1
    end
    str.join("")
end