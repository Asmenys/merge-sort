# frozen_string_literal: true

# a recursive sorting method
def mergesort(array)
  results = []
  if array.length > 1
    array_B = mergesort(array[0...array.length / 2])
    array_C = mergesort(array[array.length / 2...array.length])
    i1 = 0
    i2 = 0
    while results.length < array_B.length + array_C.length
      if array_C[i2].nil?
        results << array_B[i1]
        i1 += 1
      elsif array_B[i1].nil?
        results << array_C[i2]
        i2 += 1
      elsif array_B[i1] < array_C[i2]
        results << array_B[i1]
        i1 += 1
      elsif array_C[i2] < array_B[i1]
        results << array_C[i2]
        i2 += 1
      end
    end
  else results = array
  end
  results
end