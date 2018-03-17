def RowFactory
  SLIP_STITCH_REGEX = /[ ]*(sl st)[ ]*/
  TO_JOIN_REGEX = /[ ]*(to join)[ ]*/
  INSTRUCTION_REPEAT_REGEX = /(\*.+\*.+?(?:(?!,).)+),/
  BETWEEN_REPEAT_REGEX = /[*{(](.+)[*})]/
  FALLBACK_REGEX = /(.+)/

  STITCH_INST_REGEX = /#{SLIP_STITCH_REGEX}|#{TO_JOIN_REGEX}|#{INSTRUCTION_REPEAT_REGEX}|#{BETWEEN_REPEAT_REGEX}|#{FALLBACK_REGEX}/

  def get_stitch(instruction)
    stitch_instructions = split_instructions(instruction)

    if stitch_instructions.length == 1
      case stitch_instructions[0]
      when 'inc'
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

    while stitch_instructions.length > 1
      stitch_instructions.each do |stitch|
        split_instructions(stitch)
      end
    end

    return row
  end

  def split_instructions(inst)
    inst.scan(STITCH_INST_REGEX).flatten.reject{ |s| s.nil? }
  end

#["* Dc Inc * Repeat 6 times", "sl st", "to join"]

end