class Row
  def initialize(stitches = [])
  end

  attr_reader :name

  def make
    raise NotImplementedError
  end
end

