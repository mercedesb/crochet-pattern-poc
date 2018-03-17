class StitchFactory
  def get_stitch(instruction)
    case instruction
    when 'dc'
      DoubleCrochet.new
    when 'sc'
      SingleCrochet.new
    when 'sl st'
      SlipStitch.new
    else
      UnknownStitch.new(instruction)
    end
  end
end