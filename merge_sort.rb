

def merge_sort(array)
  n = array.length
  left = array[0..n/2-1]
  right = array[n/2..-1]
  if n < 2
    return array
  else
    left = merge_sort(left)
    right = merge_sort(right)
    merged_array = []
    until merged_array.length == array.length
      if right.length == 0
        merged_array << left.shift
      elsif left.length == 0
        merged_array << right.shift
      elsif left[0] < right[0]
        merged_array << left.shift
      elsif right[0] < left[0]
        merged_array << right.shift
      end
    end
    return merged_array
  end
end
