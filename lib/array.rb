# Reopening Array in order to create a demonstration of how to do so
class Array
  def pair_that_sums_to?(total)
    ArrayPairSummer.new(self.sort).pair_that_sums_to?(total)
  end
end
