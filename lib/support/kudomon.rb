module Kudomon

  attr_reader :position, :type

  def initialize(position, type)
    @type = type
    @position = position
  end

end
