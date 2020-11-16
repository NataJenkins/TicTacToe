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
    it 'Check input is not a string' do
      grid = Grid.new
      expect { grid.check_valid?('a') }.to raise_error(TypeError)
    end
  end
  describe 'initialize' do
    it 'check if there is an istance of Grid' do
      grid = Grid.new
      expect(grid).to an_instance_of(Grid)
    end
  end
  let(:player1) { Player.new('player1', 'O') }
  let(:player2) { Player.new('player2', 'X') }
  let(:player3) { Player.new('player3', '/') }
  describe '#winner?' do
    it 'raises an argument error ' do
      grid = Grid.new
      expect { grid.winner?(player1, player2, player3) }.to raise_error(ArgumentError)
    end
    it '#raises an argument error ' do
      grid = Grid.new
      expect { grid.winner?(player1, player2) }
    end
  end
  describe '#update_board' do
    it 'board is getting the player token' do
      grid = Grid.new
      expect { grid.update_position('one', 5).to eq('X') }
    end
  end
  describe '#player_position' do
    it 'returns an instance of an array' do
      grid = Grid.new
      expect { grid.player_position(player1).to an_instance_of(Array) }
    end
  end
end
