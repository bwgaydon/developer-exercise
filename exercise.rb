class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    @new = str
    @new.gsub!(/\b[A-Z]\w{4,}/, "Marklar")
    @new.gsub!(/\b[a-z]\w{4,}/, "marklar")
    return @new
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    if nth==0
      return 0
    elsif nth==1
      return 1
    else
      @sum=0
      @i=2
      @minustwo = 0
      @minusone = 1
      while @i<nth do
        @temp = @minustwo + @minusone
        puts @temp
        @minustwo = @minusone
        @minusone = @temp
        if @temp % 2 == 0
          @sum += @temp
        end
        @i += 1
      end
    end
    return @sum
  end

end

