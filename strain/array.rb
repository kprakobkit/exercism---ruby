class Array
  def keep &block
    result = []
    each { |element| result << element if yield element }
    result
  end

  def discard &block
    result = []
    each { |element| result << element unless yield element }
    result
  end
end
