sequence = []

def merge_sort(sequence, first, last)
  if first < last
    mid = (first + last) / 2
    merge_sort(sequence, first, mid)
    merge_sort(sequence, mid + 1, last)
    merge(sequence, first, mid + 1, last)
  end
end

def merge(sequence, first, mid, last)
  left = sequence[first..mid - 1]
  right = sequence[mid..last]
  left.push(Float::MAX)
  right.push(Float::MAX)
  i = 0
  j = 0
  (first..last).each do |n|
    if left[i] <= right[j]
      sequence[n] = left[i]
      i = i + 1
    else
      sequence[n] = right[j]
      j = j + 1
    end
  end
end

gets.to_i.times do
	sequence<<gets.to_i
end
merge_sort(sequence, 0, sequence.size-1)
puts *(sequence)
