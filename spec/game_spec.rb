require 'game'

describe Game do

  subject(:game) { described_class.new(chikapu: chikapu, geoflude: geoflude,
    mancharred: mancharred, mewclue: mewclue, sourbulb: sourbulb,
    squirkle: squirkle) }
  let(:chikapu) { double(:chikapu, generate_type: :electric) }
  let(:geoflude) { double(:geoflude, generate_type: :rock) }
  let(:mancharred) { double(:mancharred, generate_type: :fire) }
  let(:mewclue) { double(:mewclue, generate_type: :psychic) }
  let(:sourbulb) { double(:sourbulb, generate_type: :grass) }
  let(:squirkle) { double(:squirkle, generate_type: :water) }

  it "creates a chikapu with type electric" do
    expect(game.chikapu.generate_type).to eq(:electric)
  end

end
