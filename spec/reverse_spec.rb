require 'reverse'

describe '#reverse' do
  it 'can reverse the order of elements in an array' do
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    expect(reverse(arr)).to eq([9, 8, 7, 6, 5, 4, 3, 2, 1])
  end
end
