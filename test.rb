require 'minitest/autorun'
require 'turn'
require_relative './app.rb'
class GameTest < MiniTest::Unit::TestCase

  def test_hi
    Game.new.hi
    assert true
  end
end
