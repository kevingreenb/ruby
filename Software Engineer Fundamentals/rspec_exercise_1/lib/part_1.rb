 def average(num1, num2)
(num1+num2)/2.0
 end

def average_array(arr)
    arr.inject {|acc, e| acc+e}/arr.length.to_f
end

def repeat(str, num)
    str * num
end

def yell(str)
    str.upcase! + "!"
end

def alternating_case(str)
    i=0
    str = str.split(" ")
    ret = []
    while i < str.length
        if i%2==1
            ret << str[i].downcase
        else
            ret  << str[i].upcase
        end
        i+=1
    end
    ret.join(" ")
end