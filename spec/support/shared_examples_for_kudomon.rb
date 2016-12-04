shared_examples_for Kudomon do

   let(:subject) { double(:subject, position: [2,3])}

  context "when created" do
    it "has a random position" do
      expect(subject.position).to include(2,3)
    end

    it "has no type" do
      allow(subject).to receive(:type).and_return(nil)
      expect(subject.type).to be(nil)
    end

  describe "#generate_type" do
    it "generates its type" do
      allow(subject).to receive(:generate_type).and_return(:electric)
      expect(subject.generate_type).to eq(:electric)
    end

    end

  end

end
