class Mergesort
  def mergesort(arr)
    left, right = [], []
    return arr if arr.length <= 1

    middle = arr.length / 2
    0.upto(middle - 1) { |i| left << arr[i] }
    (middle).upto(arr.length - 1) { |i| right << arr[i] }

    left = mergesort(left)
    right = mergesort(right)

    if left.last <= right.first
      left += right
      return left
    end

    merge(left, right)
  end

  private

    def merge(left, right)
      result = []

      while left.length > 0 and right.length > 0 do
        if left.first <= right.first
          result << left.shift
        else
          result << right.shift
        end
      end

      result += left if left.length > 0
      result += right if right.length > 0
      result
    end

end

describe Mergesort do
  describe '#mergesort' do
    let(:single_element_array) { [1] }
    let(:multi_element_array) { (1..999).to_a.sample(rand(5...10)) }

    it 'sorts a single element array' do
      expect(Mergesort.new.mergesort(single_element_array)).to eq([1])
    end

    it 'sorts a larger array' do
      expect(Mergesort.new.mergesort(multi_element_array)).to eq(multi_element_array.sort)
    end
  end
end

