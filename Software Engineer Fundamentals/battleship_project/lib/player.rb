class Player
    def get_move
        print 'enter a position with coordinates separated with a space like `4 7` \n' 
        input = gets.chomp.split(" ")
        input.map {|val| val.to_i}
    end

end
