require("byebug")

def my_map(arr, &prc)
    new_arr = []
    arr.each {|val| new_arr << prc.call(val)}
    new_arr
end

def my_select(arr, &prc)
    new_arr = []
    arr.each do |val| 
        if prc.call(val) == true
            new_arr << val
        end
    end
    new_arr
end

def my_count(arr, &prc)
    count = 0 
    arr.each do |val| 
        if prc.call(val) == true
            count += 1
        end
    end
    count
end

def my_any?(arr, &prc)
    arr.each do |val| 
        if prc.call(val) == true
            return true
        end
    end
    return false
end

def my_all?(arr, &prc)
    arr.each do |val| 
        if prc.call(val) != true
            return false
        end
    end
    return true
end

def my_none?(arr, &prc)
    arr.each do |val| 
        if prc.call(val) == true
            return false
        end
    end
    return true
end