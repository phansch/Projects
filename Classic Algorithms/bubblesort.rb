class Bubblesort
  def sort(arr)
    itemCount = arr.length - 1
    begin
      swapped = false
      itemCount -= 1

      0.upto(itemCount) do |i|
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swapped = true
        end
      end
    end while swapped

    return arr
  end
end

describe Bubblesort do
  describe '#bubblesort' do
    let(:single_element_array) { [1] }
    let(:multi_element_array) { (1...999).to_a.sample(rand(5...10)) }

    it 'handles an empty array' do
      expect(Bubblesort.new.sort([])).to eq([])
    end

    it 'sorts a single element array' do
      expect(Bubblesort.new.sort(single_element_array)).to eq([1])
    end

    it 'sorts two numbers' do
      expect(Bubblesort.new.sort([7, 2])).to eq([2, 7])
    end

    it 'sorts a larger array' do
      expect(Bubblesort.new.sort(multi_element_array)).to eq(multi_element_array.sort)
    end
  end
end
