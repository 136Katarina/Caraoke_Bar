require 'minitest/autorun'
require 'minitest/rg'
require_relative '../room.rb'
require_relative '../guest.rb'
require_relative '../song.rb'

class TestRoom < MiniTest::Test

  def setup
    @room = Room.new("Pop", 20)




    @guest1 = Guest.new("Bob", 50)


    @song1 = Song.new("Umbrella","Rihanna")
    @song2 = Song.new("Havana","Camila")
    @song3 = Song.new("Wolves","Selena")
    @song4 = Song.new("Stargazing","Kygo")

    # @room.add_song(@song3)
  end

  def test_room_starts_empty
    assert_equal(0, @room.guests.length)
  end

  def test_add_guest
    @room.add_guest(@guest1)
    assert_equal(1, @room.guests.length)
  end

  def test_remove_all_guests
    @room.remove_all_guests
    assert_equal( 0, @room.guests.count)
  end


  def test_add_songs
    @room.add_songs(@song4)
    assert_equal(1, @room.songs.length)
  end

  def test_remove_songs
    @room.add_songs(@song4, @song3)
    @room.remove_songs
    assert_equal( 1, @room.songs.count)
  end

  def test_room_full?
    @room.add_guest(@guest1)
    assert_equal(1, @room.guests.count)
    assert_equal(false, @room.room_full?)
  end

  def test_has_till_empty
    assert_equal(0, @room.till())
  end


  def test_can_afford?
    assert_equal(true,@room.can_afford?(@guest1))
    # assert_equal()
  end

  def test_add_to_till
    @room.add_to_till(@guest1)
    assert_equal(30, @guest1.wallet)
    assert_equal(20, @room.till)
  end
end
