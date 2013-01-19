module FakeEnumerable
  def map
    out = []
    each { |e| out << yield(e) }
    out
  end

  def select
    out = []
    each { |e| out << e if yield(e) }
    out
  end
end
