require 'sort'

describe '#sort' do
  it 'can sort an array' do
    arr = [2, 5, 1, 9, 3, 7, 4, 6, 8]
    expect(sort(arr)).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
  end
end
