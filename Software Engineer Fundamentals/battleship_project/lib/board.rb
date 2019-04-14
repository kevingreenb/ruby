class Board
    attr_reader :size
  def initialize(n)
    @grid = Array.new(n){Array.new(n, :N)}
    @size = n*n
  end

  def [](i)
    @grid[i[0]][i[1]]
  end

  def []=(i, value)
    @grid[i[0]][i[1]] = value
  end

  def num_ships
    count = 0
    @grid.each do |val|
        val.each do |val2|
            if val2 == :S 
                count += 1
            end
        end
    end
    count
  end

  def attack(position)
    if self[position] == :S 
        self[position] = :H 
        print 'you sunk my battleship!'
        return true
    else 
        self[position] = :X
        return false
    end
  end

  def place_random_ships
    ships = @size * 0.25

    while self.num_ships < ships
        row = rand(0...@grid.length)
        col = rand(0...@grid.length)
        pos = [row, col]
        self[pos] = :S
    end
  end

  def hidden_ships_grid
    temp = @grid.map do |val|
        val.map do |val2|
            if val2 == :S
                :N 
            else
                val2
            end
        end
    end
    temp
  end

  def self.print_grid(g)
    g.each do |val|
        puts val.join(" ")
    end
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(self.hidden_ships_grid)
  end

end
