# Reopening Array in order to create a demostration of how to do so
class Array
  def pair_that_sums_to?(total)
    low_pointer = 0
    high_pointer = length - 1

    (self[low_pointer] + self[high_pointer]) == total
  end
end
