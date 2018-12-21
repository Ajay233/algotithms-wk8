def last(arr)
  arr[-1]
end

def create_array(num)
  array = num.times.map do
  ("a".."z").to_a.sample
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

def array_timer_milliseconds
  array = create_array(5000)
  i = 5000
  while array.length <= 100000
    result = []
    20.times do
    start = Time.now #get start time
    array.last
    finish = Time.now #get finish time
    result << ((finish - start) * 1000.0).round(3)
    end
    result << average(result).round(3)
    # CSV.open('last_nano.csv', 'a') do |csv|
    #   csv << result
    # end
    i += 5000
    array = create_array(i)
  end
end

# array_timer_milliseconds
