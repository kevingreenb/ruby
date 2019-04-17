require "byebug"
class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def bubble_sort(&prc)
        sorted = false
        while !sorted
            sorted = true
            (0...self.length-1).each do |val|
                if self[val] > self [val+1]
                    self[val], self[val+1] = self[val+1],self[val]
                    sorted = false
                end
            end
        end
    end
end

debugger
[4, 12, 2, 8, 1, 14, 9, 25, 24, 81].bubble_sort
