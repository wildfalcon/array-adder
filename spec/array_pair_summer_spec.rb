require 'array_pair_summer'

describe 'ArrayPairSummer' do
  describe '#pair_that_sums_to?' do
    it 'returns false when no pair adds to total' do
      summer = ArrayPairSummer.new([1, 2, 3, 4])
      expect(summer.pair_that_sums_to?(8)).to eq false
    end

    it 'returns true when first and last elements add to total' do
      summer = ArrayPairSummer.new([1, 2, 4, 4])
      expect(summer.pair_that_sums_to?(5)).to eq true
    end

    it 'returns true when middle pair add to total' do
      summer = ArrayPairSummer.new([1, 3, 4, 7])
      expect(summer.pair_that_sums_to?(7)).to eq true
    end

    it 'raises error when array is unsorted' do
      summer = ArrayPairSummer.new([6, 1, 3, 4])
      expect { summer.pair_that_sums_to?(7) }
        .to raise_error(StandardError)
    end
  end
end
