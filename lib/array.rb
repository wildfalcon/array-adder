# Reopening Array in order to create a demostration of how to do so
class Array
  def pair_that_sums_to?(total)
    raise StandarError if sort != self

    pointers = [0, length - 1]

    while more_moves_available?(pointers)
      break if current_total(pointers) == total
      next_lowest_total(pointers) if current_total(pointers) > total
      next_highest_total(pointers) if current_total(pointers) < total
    end

    current_total(pointers) == total
  end

  def more_moves_available?(pointers)
    (pointers.last - pointers.first) > 1
  end

  def current_total(pointers)
    self[pointers.first] + self[pointers.last]
  end

  def next_lowest_total(pointers)
    pointers[1] = pointers[1] - 1
  end

  def next_highest_total(pointers)
    pointers[0] = pointers[0] + 1
  end
end
