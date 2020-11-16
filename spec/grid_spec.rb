require './lib/grid'

describe Grid do
  describe '#check_valid?' do
    it 'Check input is between 1 and 9' do
      grid = Grid.new
      input = grid.check_valid?(1)
      expect(input).to eq(true)
    end
    it 'Check input is between 1 and 9' do
      grid = Grid.new
      input = grid.check_valid?(10)
      expect(input).to eq(false)
    end
    it 'Check input is not negative' do
      grid = Grid.new
      input = grid.check_valid?(-1)
      expect(input).to eq(false)
    end
  end
  describe 'initialize' do
    it 'check if there is an istance of Grid' do
      grid = Grid.new
      expect(grid).to an_instance_of(Grid)
    end
  end
  describe '#winner?' do
    let(:player1) { Player.new('player1', 'O') }
    let(:player2) { Player.new('player2', 'X') }
    it 'checks if winner is assigned player variable ' do
      grid = Grid.new
      expect(grid.winner?(player1,player2).to eql?(true))
  end
end
end
