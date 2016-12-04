require './lib/kudomon_types/chikapu'

class Game

  attr_reader :chikapu

  def initialize(
    chikapu: Chikapu.new, geoflude: Geoflude.new,
    mancharred: Mancharred.new, mewclue: Mewclue.new,
    sourbulb: Sourbulb.new, squirkle: Squirkle.new
    )
    @chikapu = chikapu
    @geoflude = geoflude
    @mancharred = mancharred
    @mewclue = mewclue
    @sourbulb = sourbulb
    @squirkle = squirkle
  end

end
