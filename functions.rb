# Return a reversed copy of the array
def reverse(an_array)
  an_array.reverse_each { |e| print " ", e }
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)
  a_string.downcase!.split('').inject(Hash.new(0)) do |count_hash, stringval|
    count_hash[stringval] += 1
  count_hash
  end
end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
  an_array.inject { |endnumber, value|
    if (value.is_a?(Numeric))
      then endnumber += value
    else endnumber
    end }
end

# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
  myarray = Array.new
  $i = 1
  while $i < 101 do
    if ($i%3 == 0 && $i%5 == 0)
      then myarray.push("FizzBuzz")
    elsif ($i%3 == 0)
      then myarray.push("Fizz")
    elsif ($i%5 == 0)
      then myarray.push("Buzz")
    else myarray.push($i.to_s)
    end
    $i += 1
  end
  myarray
end

# Uncomment a line to test the function you are developing
# Type "ruby functions.rb" at command line (Konsole) to run the script
# puts reverse([3,6,'dog']).inspect
# puts histogram('The Quick brown fox').inspect
# puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
# puts fizzbuzz.join("\n")