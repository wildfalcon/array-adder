require 'array'

describe 'Array' do
  describe '#pair_that_sums_to?' do
    it 'returns false when no pair adds to total' do
      expect([1, 2, 3, 4].pair_that_sums_to?(8)).to eq false
    end

    it 'returns true when a pair adds to total' do
      expect([1, 2, 4, 4].pair_that_sums_to?(5)).to eq true
    end
  end
end
