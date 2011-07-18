def search_sorted_for_k(array, k, i=0)
  return false if (array.last < k) || (array.first > k)
  mindex(array, k, i)
end

def mindex(array, k, i=0)
  return false if array.empty?
  return i if k == array.first
  length = array.length
  right_length = array.length / 2
  left_length = length - right_length
  left = array.first(left_length)
  right = array.last(right_length)
  if left.last < k
    search_sorted_for_k(right, k, i+left_length)
  else
    search_sorted_for_k(left, k, i)
  end
end


class Array

  def my_uniq
    uniqd = []
    self.sort.each {|x| x == uniqd.last ? nil : uniqd << x }
    uniqd
  end

  def my_uniq2
    elements = {}
    self.each {|x| elements[x] = nil }
    elements.keys
  end

end
