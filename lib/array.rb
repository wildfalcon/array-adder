require 'lib/array_pair_summer'

# Reopening Array in order to create a demonstration of how to do so
class Array
  def pair_that_sums_to?(total)
    ArrayPairSummer.new(self).pair_that_sums_to?(total)
  end
end
