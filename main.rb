# * Dc Inc * Repeat 6 times, sl st to join (12)


@stitch_count

def row
  @stitch_count = 0

  6.times do |n|
    puts double_crochet_inc
  end

  puts slip_stitch
  puts join

  puts "(#{@stitch_count})"
end

def double_crochet
  @stitch_count += 1
  "dc"
end

def double_crochet_inc
  @stitch_count += 1
  "#{double_crochet} inc"
end

def slip_stitch
  @stitch_count += 1
  "sl st"
end

def join
  @stitch_count -= 1
  "to join"
end

row
