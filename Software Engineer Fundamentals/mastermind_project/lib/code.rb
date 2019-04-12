require "byebug"
class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs

  def self.valid_pegs?(arr)
    arr.all? { |val| POSSIBLE_PEGS.has_key?(val.upcase) }
  end

  def initialize(arr)
    if Code.valid_pegs?(arr)
      @pegs = arr.map { |val| val.upcase }
    else 
      raise "invalid pegs"
    end
  end 

  def self.random(length)
    rand = []
    length.times { rand << POSSIBLE_PEGS.keys.sample }
    Code.new(rand)
  end

  def self.from_string(str)
    Code.new(str.split(""))
  end

  def [](index)
    self.pegs[index]
  end

  def length
    self.pegs.length
  end

  def num_exact_matches(guess)
    count = 0
    guess.pegs.each_with_index do |val, i| 
      if guess[i] == self[i]
        count += 1
      end
    end
    count
  end

  def num_near_matches(guess)
    count = 0
    guess.pegs.each_with_index do |val, i|
      if guess[i] != self[i] && self.pegs.include?(val)
        count += 1
      end
    end
    count
  end

  def ==(guess)
    if guess.length != self.length
      return false
    end
    num_exact_matches(guess) == @pegs.length
  end

end


# c1 = Code.new(["R", "G", "R", "B"])
# debugger
# p self.num_near_matches(Code.new(["B", "R", "Y", "Y"]))
