class Room

  attr_reader :name, :price, :guests, :songs, :capacity, :till

  def initialize(name, entry_fee)
    @name = name
    @price = entry_fee
    @guests = []
    @songs = []
    @capacity = 2
    @till = 0
  end


  def add_guest(guest)
    @guests << guest
  end

  def remove_all_guests
    @guests.clear
  end

  def add_songs(*songs)
    for pet in songs
      @songs << pet
    end
  end


  def remove_songs
    @songs.pop
  end


  def room_full?
    if @guests.count == @capacity
      return true
    else
      return false
    end
  end

  def can_afford?(guest)
    if @price <= guest.wallet
      return true
    else
      return false
    end
  end


  def add_to_till(guest)
    if can_afford?(guest)
      guest.wallet -= @price
      @till += @price
    end
  end









  #
  # def check_in(room, guest)
  #   if guest.wallet >= room.entry_fee &&
  #     return room.capacity+ 1
  #   else
  #     false
  #   end
  # end

end
