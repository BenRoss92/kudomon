require './lib/trainer'
require './lib/kudomon_types/chikapu'
require './lib/kudomon_types/geoflude'
require './lib/kudomon_types/mancharred'
require './lib/kudomon_types/mewclue'
require './lib/kudomon_types/sourbulb'
require './lib/kudomon_types/squirkle'

class Game

  attr_reader :trainer, :all_kudomon, :chikapu, :geoflude, :mancharred,
  :mewclue, :sourbulb, :squirkle, :nearby_kudomon

  def initialize(
    trainer: Trainer.new, chikapu: Chikapu.new, geoflude: Geoflude.new,
    mancharred: Mancharred.new, mewclue: Mewclue.new,
    sourbulb: Sourbulb.new, squirkle: Squirkle.new
    )
    @trainer = trainer
    @chikapu = chikapu
    @geoflude = geoflude
    @mancharred = mancharred
    @mewclue = mewclue
    @sourbulb = sourbulb
    @squirkle = squirkle
    @all_kudomon = [@chikapu, @geoflude, @mancharred, @mewclue, @sourbulb, @squirkle]
  end

  def generate_types
    all_kudomon.map { |k| k.generate_type }
  end

  def find_kudomon
    @nearby_kudomon = all_kudomon.select { |k| k.position.inject(:+) < 10 }
  end

  def catch_kudomon(index)
    @trainer.collection << @nearby_kudomon.values_at(index - 1)[0]
  end

end
