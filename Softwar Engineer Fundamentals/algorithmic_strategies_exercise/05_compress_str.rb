# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str)
    result = []
    str = str.split("")
    streak = 1
    i = 0
    while i < str.length
        if str[i]==str[i+1]
            streak += 1
        elsif streak == 1
            result << str[i]
        else
            result << streak.to_s
            result << str[i]
            streak = 1
        end
        i+=1
    end
    return result.join("")
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
