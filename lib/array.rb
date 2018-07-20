# Reopening Array in order to create a demonstration of how to do so
class Array
  def pair_that_sums_to?(total)
    raise StandarError if sort != self

    pointers = [0, length - 1]

    if current_total(pointers) > total
      search_decreasing(pointers, total)
    else
      search_increasing(pointers, total)
    end

    current_total(pointers) == total
  end

  def search_decreasing(pointers, total)
    reduce_test_total pointers while current_total(pointers) < total
  end

  def search_increasing(pointers, total)
    increse_test_total pointers while current_total(pointers) > total
  end

  def current_total(pointers)
    self[pointers.first] + self[pointers.last]
  end

  def reduce_test_total(pointers)
    pointers[1] = pointers[1] - 1
  end

  def increase_test_total(pointers)
    pointers[0] = pointers[0] + 1
  end
end
