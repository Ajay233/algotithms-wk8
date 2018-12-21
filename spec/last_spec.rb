require "last"

describe "#last" do
  it "can return the last element of an array" do
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    expect(last(arr)).to eq(9)
  end
end
