require 'trainer'

describe Trainer do

  subject(:trainer) { described_class.new }

  it "initializes with a position" do
    expect(trainer.position).to include(0,0)
  end

  it "initializes with an empty Kudomon collection" do
    expect(trainer.collection).to be_empty
  end

end
