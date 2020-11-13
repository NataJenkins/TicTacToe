require './lib/grid'

describe Grid do
  describe '#check_valid?' do
    it 'Check input is between 1 and 9' do
      grid = Grid.new
      input = grid.check_valid?(1)
      expect(input).to be_within(1)
    end
    it 'Check input is between 1 and 9' do
      grid = Grid.new
      input = grid.check_valid?(10)
      expect(input).to eq(false)
    end
  end
end
