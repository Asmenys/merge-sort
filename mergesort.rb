# frozen_string_literal: true

require 'pry-byebug'
# a recursive sorting method
def mergesort(array)
  results = []
  if array.length > 1
    array_b = mergesort(array[0...array.length / 2])
    array_c = mergesort(array[array.length / 2...array.length])
    i1 = 0
    i2 = 0
    while results.length < array_b.length + array_c.length
      if array_c[i2].nil?
        results << array_b[i1]
        i1 += 1
      elsif array_b[i1].nil?
        results << array_c[i2]
        i2 += 1
      elsif array_b[i1] < array_c[i2]
        results << array_b[i1]
        i1 += 1
      elsif array_c[i2] < array_b[i1]
        results << array_c[i2]
        i2 += 1
      elsif array_c[i2] == array_b[i1]
        results << array_b[i1] << array_c[i2]
        i1 += 1
        i2 += 1
      end
    end
  else results = array
  end
  results
end
binding.pry
test = 'test'
