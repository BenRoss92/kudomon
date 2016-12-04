module Kudomon

  attr_reader :position, :type

  def initialize(position = Array.new(2) {rand(-9..9)}, type: nil)
    @position = position
    @type = type
  end

end
