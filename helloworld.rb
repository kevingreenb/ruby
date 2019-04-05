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
p caesar_cipher("apple", 1)
