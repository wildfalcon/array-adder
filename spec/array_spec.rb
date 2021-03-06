require 'array'

describe 'Array' do
  describe '#pair_that_sums_to?' do
    it 'returns false when no pair adds to total' do
      expect([1, 2, 3, 4].pair_that_sums_to?(8)).to eq false
    end

    it 'returns true when first and last elements add to total' do
      expect([1, 2, 4, 4].pair_that_sums_to?(5)).to eq true
    end

    it 'returns true when middle pair add to total' do
      expect([1, 3, 4, 7].pair_that_sums_to?(7)).to eq true
    end

    it 'return true even when array is unsorted' do
      expect([6, 1, 3, 4].pair_that_sums_to?(4)).to eq true
    end
  end
end
