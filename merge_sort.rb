# frozen_string_literal: true

def merge_sort(arr)
  return arr unless arr.length > 1

  index_mid = (arr.length / 2).floor
  left_arr = arr[0, index_mid]
  right_arr = arr[index_mid..]

  left_sorted = merge_sort(left_arr)
  right_sorted = merge_sort(right_arr)

  merge(left_sorted, right_sorted)
end

def merge(left_arr, right_arr)
  merged_arr = []
  while left_arr.length.positive? && right_arr.length.positive?
    merged_arr << if left_arr[0] <= right_arr[0]
                    left_arr.shift
                  else
                    right_arr.shift
                  end
  end
  merged_arr.concat(left_arr).concat(right_arr)
end
