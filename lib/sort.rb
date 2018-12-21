def sort(arr)
#input: array
#output: sorted array(maybe new array)
  result = []
  i = 0
  array_length = arr.length
  while i < array_length
    smallest = [9999999999]
    arr.each_with_index do |num, index|
      smallest = [num, index] if num < smallest[0]
    end
    result << smallest[0]
    arr.delete_at(smallest[1])
    smallest = [9999999999]
    i += 1
  end
  p result
end



def sortv2(arr)
#Using pop
  result = []
  # i = 0
  array_length = arr.length
  i = 0
  while i < array_length
    smallest = [99999999999]
    arr.each_with_index do |num, index|
      smallest = [num, index] if num < smallest[0]
    end
    result << smallest[0]
      last_element = arr.pop
      arr[smallest[1]] = last_element unless arr.length < 2
    smallest = [99999999999]
    i += 1
  end
  p result
end


def sortv3(arr)
#
action_taken = true
while action_taken == true
  action_taken = false
  arr.each_with_index do |num, i|
    if i == arr.length - 1
      break
    elsif arr[i] < arr[i+1] || i == arr.length - 1
      next
    else
      temp = arr[i]
      arr[i] = arr[i+1]
      arr[i+1] = temp
      action_taken = true
    end
  end
  break if action_taken == false
end
  p arr
end

def sort_v4
  
end


arr = [2, 5, 1, 9, 3, 7, 4, 6, 8]
sort(arr)
