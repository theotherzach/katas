require 'minitest/autorun'
require 'turn'
require_relative 'app.rb'

describe "FakeEnumerable" do
  before do
    @list = SortedList.new
    @list << 3 << 13 << 42 << 4 << 7
  end

  it "supports map" do
    @list.map { |x| x + 1 }.must_equal [3, 4, 7, 13, 42]
  end
end
