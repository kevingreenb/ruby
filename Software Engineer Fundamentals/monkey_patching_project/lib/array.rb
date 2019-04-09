# Monkey-Patch Ruby's existing Array class to add your own custom methods
require("byebug")
class Array
    def span
        if self.empty?
            return nil
        else 
            self.sort!
            return self[-1] - self[0]
        end
    end
    def average
        if self.empty?
            return nil
        else
            return self.inject{|k,v| k+v}/self.length.to_f
        end
    end 
    def median      
        if self.empty?
            return nil
        end
        self.sort!
        if self.length.even?
            return (self[self.length/2] + self[self.length/2-1])/2.to_f
        else
           return self[self.length/2] 
        end
    end

    def counts
        count = Hash.new(0)
        self.each { |val| count[val] += 1}
        return count
    end

    def my_count(v)
        count = 0
        self.each {|val| count += 1 if val == v}
        return count
    end

    def my_index(v)
        self.each_with_index {|k,i| return i if k == v}
        return nil
    end

    def my_uniq
        ret = []
        self.each {|v| ret << v if !ret.include?(v)}
        return ret
    end
    
        #     arr_1 = [
        #   ["a", "b", "c"],
        #   ["d", "e", "f"],
        #   ["g", "h", "i"]
        # ]
        # expected_1 = [
        #   ["a", "d", "g"],
        #   ["b", "e", "h"],
        #   ["c", "f", "i"]
        # ]

    def my_transpose
        ret = []
        i=0
        while i < self.length
            j=0
            ret2 = []
            while j < self[i].length
                ret2 << self[j][i]
                j += 1
            end
            ret << ret2
            i += 1
        end
        ret
    end

end
