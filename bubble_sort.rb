def bubble_sort(arr)
  a = -1
  while a != 0
    a = 0
    (0..(arr.length - 2)).each do |i|
      next unless arr[i] > arr[i + 1]

      temp = arr[i]
      arr[i] = arr[i + 1]
      arr[i + 1] = temp
      a += 1
    end
  end
  arr
end

def bubble_sort_by(arr)
  b = 0
  loop do
    isChanged = false
    (arr.length - 1 - b).times do |counter|
      if (yield [arr[counter], arr[counter + 1]]).positive?
        arr[counter], arr[counter + 1] = arr[counter + 1], arr[counter]
        isChanged = true
      end
    end
    break unless isChanged

    b += 1
    break if b > arr.size - 2
  end
  arr
end

result = bubble_sort_by(%w[hi test hi hello hey holla oi]) do |left, right|
  left.length - right.length
end

p result

p bubble_sort([2, 4, 1, 8, 6, 21, 17, 3])
  