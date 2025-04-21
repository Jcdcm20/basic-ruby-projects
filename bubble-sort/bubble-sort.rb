# frozen_string_literal: true

def bubble_sort(array)
  (0...array.length).each do |_|
    (0...(array.length - 1)).each do |j|
      next unless array[j] > array[j + 1]

      t = array[j]
      array[j] = array[j + 1]
      array[j + 1] = t
    end
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
