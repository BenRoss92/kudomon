shared_examples_for Kudomon do

  subject { described_class.new([1,3], :grass)}

  it "generates a random position" do
    expect(subject.position).to include(1,3)
  end
end
