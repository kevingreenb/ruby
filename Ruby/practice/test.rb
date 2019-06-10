require "byebug"
a = ["a","foo","four"]
b = "****"

def isMember(words, query)
    # Write your code here
    ret = false
    words.each do |word|
        next if word.length != query.length          
        word.each_char.with_index do |c, i|
            if i == query.length-1 && (c == query[i] || query[i] == "*")
                return true
            end
            if c != query[i] && query[i] != "*"
                next
            end
        end
    end
    ret
end

debugger
puts isMember(a,b)
