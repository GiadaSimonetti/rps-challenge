describe Player do

  subject(:player) { described_class.new("Fran") }

  describe "Initialize" do
    it "checks the attribute reader name" do
      expect(player.name).to eq("Fran")
    end
  end
end