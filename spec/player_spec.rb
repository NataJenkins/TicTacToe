require './lib/player'

describe Player do
    describe "#name" do
        it "allows empty space" do
            player = Player.new(" ", "X")
            expect(player.name).to eq (" ")
        end
    end
end