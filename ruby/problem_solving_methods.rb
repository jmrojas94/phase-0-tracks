def search_array(arr, i)
  index = 0
  while index < arr.length
    if i == arr[index]
        num = index
    end
    index += 1
  end
  num
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)

def fib(num)
  fib = [0, 1]
  x = 0 
  y = 1
  while fib.length < num
    sum = fib[x] + fib[y]
    fib.push(sum)
    x += 1
    y += 1
  end
  fib
end

p fib(6)

# Define a method that sorts an array of numbers and takes in an array as an argument.
#   Find the length of the array.
#   Loop through the array to find which numbers and greater or less than the others.
#   If numbers are swapped,
#     Move on to the next and repeat until all numbers are sorted.


def bubble(arr)
  i = arr.length
  loop do
    swapped = false
    
  (i-1).times do |x|
    if arr[x] > arr[x+1]
      arr[x], arr[x+1] = arr[x+1], arr[x]
      swapped = true
    end
  end
  break if not swapped
end
arr
end

arr = [5, 4, 23, 0, 33]

p bubble(arr)