def bubble_sort(array)
  bubbles = array
  swap = 1

  while swap == 1
    swap = 0
    bubbles.each_with_index do |bubble, index|
      next if index == bubbles.length - 1

      if bubble > bubbles[index + 1]
        swap = 1
        bubbles[index] = bubbles[index + 1]
        bubbles[index + 1] = bubble
      end
      break if swap == 1
    end
  end
  bubbles
end

p bubble_sort([4, 3, 78, 2, 0, 2])
