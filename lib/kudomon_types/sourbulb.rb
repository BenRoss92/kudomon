require './lib/support/kudomon.rb'

class Sourbulb
  include Kudomon
  def generate_type
    @type = :grass
  end
end
