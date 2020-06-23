def bubble_sort_by(arr)
  a = -1
  while a != 0
    a = 0
    for i in 0..(arr.length) - 2
      if arr[i] > arr[i + 1]
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
        a += 1
      end
    end
  end
  return arr
end

p bubble_sort_by([2, 4, 1, 8, 6, 21, 17, 3])
