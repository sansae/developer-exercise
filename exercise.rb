class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    str_arr = str.split(' ')
    str_arr.map.with_index do |word, index|
      if word.length > 4
        word_arr = word.split('')

        if word_arr[0] == word_arr[0].upcase
          word_arr.any? { |val| /[,!.?]/ =~ val } ? str_arr[index] = "Marklar#{word_arr[-1]}" : str_arr[index] = "Marklar"
        else
          word_arr.any? { |val| /[,!.?]/ =~ val } ? str_arr[index] = "marklar#{word_arr[-1]}" : str_arr[index] = "marklar"
        end
      end
    end

    str_arr.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    x = 0
    array = []
    if nth > 2
      array = [1, 1]
      x = 2
    else
      return 0
    end

    while x < nth
      array.push(array[-1] + array[-2])
      x += 1
    end

    array.select(&:even?).inject(0) { |sum, num| sum + num }
  end
end
