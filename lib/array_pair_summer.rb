# Utility class to test if an array contains a pair of elements that
# sum to a given total
class ArrayPairSummer
  def initialize(array)
    @array = array
    @low_pointer = 0
    @high_pointer = array.length - 1
  end

  def pair_that_sums_to?(total)
    raise StandarError if @array.sort != @array

    while more_moves_available?
      break if current_total == total
      next_element_pair!(total)
    end

    current_total == total
  end

  def next_element_pair!(total)
    next_lowest_total! if current_total > total
    next_highest_total! if current_total < total
  end

  def more_moves_available?
    (@high_pointer - @low_pointer) > 1
  end

  def current_total
    @array[@low_pointer] + @array[@high_pointer]
  end

  def next_lowest_total!
    @high_pointer -= 1
  end

  def next_highest_total!
    @low_pointer += 1
  end
end
