# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple 
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    found = false
    if num_1 > num_2
        num_1,num_2 = num_2,num_1
    end
    i = num_2
    while !found do i
        if i%num_2 == 0 && i%num_1== 0
            return i
        end
        i += 1
    end
end



# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
 frequency_counter = Hash.new(0)
 i = 0
 j = i+1
 while j < str.length
    frequency_counter[str[i]+str[j]] += 1
    i += 1
    j = 1+j
 end
 frequency_counter.max_by { |k,v| v}[0]
end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        ret = {}
        self.each { |k,v| ret[v] = k }
        return ret
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        i = 0
        j = i+1
        count = 0
        while i < self.length-1
            if self[i]+self[j] == num
                count += 1
            end
            if j == self.length-1
            i += 1
            j = i
            end
            j += 1
        end
        return count
    end


    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    def bubble_sort(&prc)
        prc ||= Proc.new { |a, b| a <=> b }

        sorted = false
        while !sorted
            sorted = true
    
            (0...self.length - 1).each do |i|
                if prc.call(self[i], self[i + 1]) == 1
                    self[i], self[i + 1] = self[i + 1], self[i]
                    sorted = false
                end
            end
        end
        
        self
    end
end
