require("byebug")
def select_even_nums(arr)
    arr.select {|val| val.even? }
end

      dogs = [
        {"name"=>"Fido", "age"=>3},
        {"name"=>"Spot", "age"=>2},
        {"name"=>"Rex", "age"=>5},
        {"name"=>"Gizmo", "age"=>1}
      ]

def reject_puppies(arr)
   arr.reject {|k| k["age"]<2 || k["age"]==2 }
end

def count_positive_subarrays(arr)
    arr.count { |k| k.inject { |s,v| s+v}>0}
end

def aba_translate(str)
    vowel = "aeiou"
    str = str.split("")
    ret = []
    str.each do |val|
        ret << val
        if vowel.include?(val)
            ret << "b"
            ret << val
        end
    end
    ret.join("")
end

def aba_array(arr)
    arr.map {|val| aba_translate(val)}
end 
