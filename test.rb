  def count_to(n)
    num_array = []
    i = 0
    if n > 0
      while i <= n
        num_array << i
        i += 1
      end
    elsif n < 0
      while i >= n
        num_array << i
        i -= 1
      end
    end
    num_array

  end

puts count_to(5)

puts count_to(-5)