require './lib/kudomon_types/chikapu'
require './lib/kudomon_types/geoflude'
require './lib/kudomon_types/mancharred'
require './lib/kudomon_types/mewclue'
require './lib/kudomon_types/sourbulb'
require './lib/kudomon_types/squirkle'

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
