def bubble_sort(array)
  sorted = false
  until sorted do
    sorted = true
    for i in 0...array.length - 1 do
      if array[i] > array[i + 1]
        sorted = false
        puts "Swap!"
        tmp = array[i + 1]
        array[i + 1]  = array[i]
        array[i] = tmp
      end
    end
  end
  array
end

puts bubble_sort([4,3,78,2,0,2])
