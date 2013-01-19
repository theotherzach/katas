module FakeEnumerable

  def map
    out = []
    self.each { |e| out << e }
    out
  end
end
