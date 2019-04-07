# Write a method, max_inject(arr), that accepts any amount of numbers arguments and returns
# the largest number. Solve this using the built-in inject.
def max_inject( *args )
    ret = *args.inject do |acc, v|
        acc > v ? acc : v
    end
    return ret[0]
end


p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30
