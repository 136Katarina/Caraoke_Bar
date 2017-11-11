require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guest.rb'

class TestGuest < MiniTest::Test

  def setup
  @guest1 = Guest.new("Bob", 50)

  end



  def test_guest_name
  assert_equal("Bob", @guest1.name)
  end



end
