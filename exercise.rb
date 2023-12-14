class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    words = str.split(" ").map { |word| process_word(word) }
    return words.join(" ")
  end
  
  def self.process_word(word)
    if word.length > 4
      return capitalize_word(word) + check_punctuation(word)
    else
      return word
    end
  end
  
  def self.capitalize_word(word)
    word.capitalize == word ? "Marklar" : "marklar"
  end
  
  def self.check_punctuation(word)
    word[-1] =~ /[[:punct:]]/ ? word[-1] : ''
  end  

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return 0 if nth <= 0
  
    fib_sequence = [1, 1]
    sum = 0
  
    while fib_sequence.length < nth
      next_number = fib_sequence[-1] + fib_sequence[-2]
      fib_sequence << next_number
    end
  
    fib_sequence.each do |num|
      sum += num if num.even?
    end
  
    sum
  end

end
