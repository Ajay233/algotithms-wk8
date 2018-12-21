list = [ "Ajay", "Aaron", "Al", "Sharon", "Steph", "Will M",
         "Will W", "Dana", "Paul", "Michael", "Stuart", "Jo",
         "David", "Alex", "Karen", "Nim", "Max", "Aga", "Alpha", "Abdi",
         "Sam", "Wayne"]

def make_groups(list, num)
#input = list of students, number of groups to make
#output = a list of groups

# Solution:
#divide group total by 4
group_size = list.length / num

#save remainder for later
remainders = list.length % num

#make a group
# group_list = []
# group = []
# list.each do |student|
#   if group.length < group_size
#     group << student
#     list.shift
#   else
#     group_list << group
#     group = []
#   end
# end

#Make a list of 4 groups based on division result
# while list.length > 0
  group_list = []
  group = []
  num.times {group_list << []}
  i = 0
  list.each do |student|
    group_list[i] << student
    i == (num -1) ? i = 0 : i += 1
  end

p group_list
#add a remainder to a group until there are no remainders left
#Didn't need to do this because I realised an easier way to do this
end

start = Time.now
make_groups(list, 4)
finish = Time.now
result = ((finish - start) * 1000.0).round(3)
p result
