require "byebug"

def all_words_capitalized?(arr)
    arr.all? {|val| (val[0]==val[0].upcase && val[1..-1] == val[1..-1].downcase)}
end

def no_valid_url?(arr)
    urls = ["org","com","io","org","net"]
    arr.none? do |val| 
        urls.any? { |val2| val.end_with?(val2) }
    end
end

def any_passing_students?(arr)
    arr.any? do |val|
        val[:grades].inject {|s,v| s+v}/val.length > 75
    end
end