class Trainer

  attr_reader :position, :collection

  def initialize(position = [0,0])
    @position = position
    @collection = Array.new(0)
  end

end
