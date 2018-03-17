# * Dc Inc * Repeat 6 times, sl st to join (12)
#


require './stitch'

stitch_count = 0
stitches = []

6.times do |n|
  stitches << Increase.new(DoubleCrochet.new)
end

stitches << Join.new(SlipStitch.new)

stitches.each do |stitch|
  puts stitch.make
  stitch_count += stitch.count
end

puts "(#{stitch_count})"

