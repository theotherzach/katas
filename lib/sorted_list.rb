class SortedList

  def initialize
    @data = []
  end

  def <<(next_element)
    @data << next_element
    @data.sort!
    self
  end

  def each
    @data.each { |e| yield(e) }
  end
end
