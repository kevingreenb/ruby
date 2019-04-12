require_relative "room"
require("byebug")
class Hotel
  def initialize(str, capacities)
    @name = str
    @rooms = {}

    capacities.each do |k,v|
        @rooms[k] = Room.new(v)
    end
  end

  def name
    temp = @name.upcase.split(" ")
    return temp.map{ |k| k[0] + k[1..-1].downcase! }.join(" ")
  end
  def rooms
    @rooms
  end

  def room_exists?(room_name)
    return @rooms.has_key?(room_name)
  end

  def check_in(person, room_name)
    if self.room_exists?(room_name)
        if @rooms[room_name].add_occupant(person)
            puts "check in successful"
        else
            puts "sorry, room is full"
        end
    else 
        puts "sorry, room does not exist"
    end
  end

  def has_vacancy?
    @rooms.any? {|k| k[1].capacity  > k[1].occupants.length }
  end

  def list_rooms
    # @rooms.each { |k| print k[0] + ".*" + (k[1].capacity - k[1].occupants.length).to_s+"\n"}
    @rooms.each do |room_name, room|
        puts "#{room_name} : #{room.available_space}"
    end
  end

end


h = Hotel.new("hilbert's grand hotel", "Basement"=>4, "Attic"=>2, "Under the Stairs"=>1) 

h.list_rooms

