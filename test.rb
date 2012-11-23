require 'test/unit'
require_relative './app.rb'
class AppTest < Test::Unit::TestCase

  def test_hi
    App.new.hi
    assert true
  end
end
