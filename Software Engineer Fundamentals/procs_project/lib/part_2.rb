require("byebug")

def reverser(str, &proc)
    proc.call(str.reverse!)
end

def word_changer(str, &proc)
    str = str.split(" ")
    str = str.map { |val| proc.call(val.upcase!) }
    str.join(" ")
end

def greater_proc_value(num, proc, proc2)
    if proc.call(num) > proc2.call(num)
        return proc.call(num)
    else
        return proc2.call(num)
    end
end

def and_selector(arr, proc, proc2)
    ret = []
    arr.each do |val|
       if proc.call(val) == true && proc2.call(val) == true
        ret << val
       end
    end
    ret
end

def alternating_mapper(arr, proc, proc2)
 ret = []
 arr.each_with_index do |val, i|
    if i.even?
        ret << proc.call(val)
    else
        ret << proc2.call(val)
    end
 end
 ret
end

