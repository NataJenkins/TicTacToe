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
  #   describe "#marks" do
  #     it "check marks are in the right position"do
  #     grid = Grid.new
  #     expect(grid.assigning_marks(1)).to
  #     end
  #   end
end
