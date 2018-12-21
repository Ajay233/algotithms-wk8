require 'make_groups'

describe "#make_groups" do
  it "can create 4 groups" do
    list = [ "Ajay", "Aaron", "Al", "Sharon", "Steph", "Will M",
             "Will W", "Dana", "Paul", "Michael", "Stuart", "Jo",
             "David", "Alex", "Karen", "Nim", "Max", "Aga", "Alpha", "Abdi",
             "Sam", "Wayne"]
    group_list = make_groups(list, 4)
    expect(group_list.length).to eq(4)
    expect(group_list[0].length).to eq(6)
    expect(group_list[3].length).to eq(5)
  end
end
