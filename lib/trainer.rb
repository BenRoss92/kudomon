class Trainer

  attr_reader :name, :position, :collection

  def initialize(name, position = [0,0])
    @name = name
    @position = position
    @collection = Array.new(0)
  end

end
