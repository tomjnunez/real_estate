class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  # def rooms_from_category(category)
  #
  #
  # end

  def total_area
    house_area = @rooms.map do |room|
      room.area
    end.sum
  end
end
