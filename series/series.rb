class Series
  def initialize(string)
    @number = string.chars.map(&:to_i)
  end

  def slices(n)
    raise ArgumentError if n > @number.length
    @number.each_cons(n).to_a
  end
end
