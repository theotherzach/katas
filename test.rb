require 'minitest/autorun'
require 'turn'
require_relative './app.rb'
class GameTest < MiniTest::Unit::TestCase

  def setup
    @game = Game.new
  end

  def test_gutter_game
    roll_many(20, 0)
    assert_equal(0, @game.score)
  end

  def roll_many(n, pins)
    n.times { @game.roll(pins) }
  end

  def test_all_ones
    roll_many(20, 1)
    assert_equal(20, @game.score)
  end

  def test_one_spare
    roll_spare
    @game.roll(3)
    assert_equal(16, @game.score)
  end

  def roll_spare
    2.times { @game.roll(5) }
  end

  def test_one_strike
    roll_strike
    @game.roll(3)
    @game.roll(4)
    assert_equal(24, @game.score)
  end

  def roll_strike
    @game.roll(10)
  end
  
  def test_perfect_game
    22.times { roll_strike }
    assert_equal(300, @game.score)
  end
end
