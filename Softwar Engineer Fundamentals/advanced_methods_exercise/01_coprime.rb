# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num1, num2)
    temp = 0
    if num1 == num2
        return false
    end
    if num1 < num2
        temp = num1
    else
        temp = num2
    end
    (2...temp).each do |val|
        if num2%val == 0 && num1%val == 0 
            return false
        end
    end
    return true
end


p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
