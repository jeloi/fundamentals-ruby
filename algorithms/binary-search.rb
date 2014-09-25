# Iterative and Recursive binary search on an array
class Array
  def binary_search_iterative target
    low = 0
    high = length - 1
    while low <= high
      mid = ((high + low)/2).to_i
      if target < self[mid]
        high = mid - 1
      elsif target == self[mid]
        return mid
      else # target > mid
        low = mid + 1
      end
    end
    return nil
  end

  def binary_search_recursive target, low=0, high=(length-1)
    return nil if high < low
    mid = ((high + low)/2).to_i
    case 
    when self[mid] > target 
      binary_search_recursive(target, low, mid-1)
    when self[mid] < target
      binary_search_recursive(target, mid+1, high)
    else
      return mid 
    end
  end
end

# ary = [0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324]

# puts "Binary Search - Iterative Implementation"
# [0,42,45,24324,99999].each do |val|
#   i = ary.binary_search_iterative(val)
#   if i
#     puts "found #{val} at index #{i}: #{ary[i]}"
#   else
#     puts "#{val} not found in array"
#   end
# end

# puts "Binary Search - Recursive Implementation"
# [0,42,45,24324,99999].each do |val|
#   i = ary.binary_search_recursive(val)
#   if i
#     puts "found #{val} at index #{i}: #{ary[i]}"
#   else
#     puts "#{val} not found in array"
#   end
# end