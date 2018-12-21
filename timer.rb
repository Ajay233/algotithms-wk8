require 'csv'

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
  arr
end


def add(a, b)
  a + b
end

def getTime
  time = Time.now
  hour_to_sec = (time.hour * 60) * 60
  min_to_sec = time.min * 60
  sec = time.sec
  total_seconds = nano(hour_to_sec + min_to_sec + sec)
end

def nano(num)
  num * 1000000000
  # num / (1.0 * (10 ** 9))
end

def create_array(num)
  array = num.times.map do
  ("a".."z").to_a.sample
  end
  array
end

def create_num_array(num)
  array = num.times.map do
    rand(99999999)
  end
  array
end

def average(arr)
  result = 0
  arr.each do |num|
    result += num
  end
  result = (result / 20)
end

def timer_for_add
  start = Time.now.tv_usec
  add(4, 5)
  finish = Time.now.tv_usec
  result = finish - start
end


def array_timer_usec
  array = create_array(5000)
  i = 5000
  while array.length <= 100000
    result = []
    20.times do
    start = Time.now #get start time
    array.sort
    finish = Time.now #get finish time
    p "finsh: #{finish}"
    p "start: #{start}"
    result << (finish - start).tv_usec
    end
    p result << average(result)
    CSV.open('sort_usec.csv', 'a') do |csv|
      csv << result
    end
    i += 5000
    array = create_array(i)
  end
end

# def array_timer_milliseconds
#   array = create_array(5000)
#   i = 5000
#   while array.length <= 100000
#     result = []
#     20.times do
#     start = Time.now #get start time
#     array.last
#     finish = Time.now #get finish time
#
#     # p "finsh: #{finish}"
#     # p "start: #{start}"
#     result << ((finish - start) * 1000.0).round(3)
#     end
#     p result << average(result).round(3)
#     CSV.open('last_nano.csv', 'a') do |csv|
#       csv << result
#     end
#     i += 5000
#     array = create_array(i)
#   end
# end


def array_timer_milliseconds
  array = create_num_array(5000)
  i = 5000 #set up counter
  while array.length <= 100000
    result = [] #set up empty results array
    5.times do
    start = Time.now #get start time
    sortv3(array)
    finish = Time.now #get finish time
    result << (finish - start)
    end
    p result << average(result).round(3)
    CSV.open('my_sort.csv', 'a') do |csv|
      csv << result
    end
    i += 5000
    array = create_num_array(i)
  end
end

# array_timer_usec
array_timer_milliseconds
# now = Time.now.nsec
