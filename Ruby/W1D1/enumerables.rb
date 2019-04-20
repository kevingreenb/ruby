require "byebug"
class Array

    def my_each(&prc) 
        i = 0
        while i < self.length 
            prc.call(self[i])
            i += 1
        end
        return self
    end

    def my_select(&prc)
        ret = []
        self.my_each do |val|
           ret << val if prc.call(val)
        end
        return ret
    end

    def my_reject(&prc)
        ret = []
        self.my_each do |val|
            ret << val if !prc.call(val)
        end
        return ret
    end

    def my_any?(&prc)
       self.my_each do |val|
        return true if prc.call(val)
       end
       return false
    end
    
    def my_all?(&prc)
        self.my_each do |val|
            return false if !prc.call(val)
        end
        return true
    end

  def my_flatten
    flattened = []

    self.my_each do |el|
      if el.is_a?(Array)
        flattened.concat(el.my_flatten)
      else
        flattened << el
      end
    end

    flattened
  end

  def my_zip( *args)
    ret = []
    i = 0
    while i < self.length
      ret2 = []
      ret2 << self[i]
      args.my_each do |val|
        ret2 << val[i]
      end
      ret << ret2
      i += 1
    end
    ret
  end

  def my_rotate(num=1)
    if num > 0
      num.times { self << self.shift }
    else 
      num *= -1
      num.times { self.unshift(self.pop) }
    end
    self
  end

  def my_join(add="")
    ret = ""
    self.my_each do |val|
      ret += val.to_s
      ret << add.to_s
    end
    ret
  end

  def my_reverse
    ret = []
    i = self.length-1
    while i >= 0
      ret << self[i]
      i -= 1
    end
    ret
  end
end