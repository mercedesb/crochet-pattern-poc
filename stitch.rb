class Stitch
  def make
    raise NotImplementedError
  end

  def count
    raise NotImplementedError
  end
end

class SlipStitch < Stitch
  def make
    "sl st"
  end

  def count
    1
  end
end

class SingleCrochet < Stitch
  def make
    "sc"
  end

  def count
    1
  end
end

class DoubleCrochet < Stitch
  def make
    "dc"
  end

   def count
    1
  end
end

# Decorator pattern
class Increase < Stitch
  def initialize(stitch)
    @stitch = stitch
  end

  def make
    "#{@stitch.make} inc"
  end

  def count
    @stitch.count + 1
  end
end

# is this a stitch, not really... what pattern works here?
class Join < Stitch
  def initialize(stitch)
    @stitch = stitch
  end

  def make
    "#{@stitch.make} to join"
  end

  def count
    @stitch.count - 1
  end
end