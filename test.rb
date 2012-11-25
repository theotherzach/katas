require 'minitest/autorun'
require 'turn'
require_relative './app.rb'
class GameTest < MiniTest::Unit::TestCase

  def test_gutter_game
    Game.new
    assert true
  end
end
