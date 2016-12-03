shared_examples_for Kudomon do

  subject { described_class.new([1,3], :grass)}

  context "when created" do
    it "has a position" do
      expect(subject.position).to include(1,3)
    end

    it "has a type" do
      expect(subject.type).to be(:grass)
    end
  end

end
