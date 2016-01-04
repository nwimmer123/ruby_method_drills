#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'

def say_hello
  "hello"
end

#echo
  # returns the input string

  def echo(input)
    input
  end

#eddie_izzards_height
  # calculates Eddie Izzards height (67in)
  # and takes into account the height of his heel (default: 0in)

  def eddie_izzards_height (heel_height = 0)
    67 + heel_height
  end


#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function

  def how_many_args(*args)
    args.length
  end


#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments

  def find_answer(**kwargs)
    kwargs[:answer]
  end

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # returns the first letter of the word
  # lowercases the first letter of the word

  def first_char(string)
    string = string.downcase.split("")
    return string[0]
  end

#polly_wanna
  # echoes the original word
  # repeats the original word 3 times

  def polly_wanna(string)
    string * 3
  end

#count_chars
  # returns the number of characters in a string

  def count_chars(string)
    string = string.split("")
    string.length
  end

#yell
  # convert the message to uppercase
  # adds an exclamation point to the end of the message

  def yell(string)
    string.upcase + "!"
  end

#to_telegram
  # replaces periods with ' STOP'

  #loop doesn't work right
  def to_telegram(string)
    string = string.split("")
    array = []
    string.each do |letter|
      if letter == "."
        array << " STOP"
       else
        array << letter
      end
    end
  array.join
  end

#spell_out
  # returns the input string, with characters seperated by dashes
  # converts the string to lowercase

  def spell_out(string)
    string = string.downcase.split(//)
    string.join("-")
  end

#seperate
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  
  def seperate(string, seperator = "-")
    string = string.downcase.split(//)
    string.join(seperator)
  end

#croon
  # seperates word characters with dashes
  # preserves whitespace between words

def croon(string)
    words = string.split
    new_words = []
      words.each do |word|
        word = word.split("")
        word = word.join("-")
        new_words << word
      end
    new_words.join(" ") 
end


#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case

  def palindrome_word?(string)
    string = string.downcase
    if string == string.reverse
      return true
    end
    false
  end

#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

def palindrome_sentence?(string)
    string = string.downcase
    string = string.gsub(/\s+/, "")
    string = string.delete "!"
    string = string.delete "?"
    string = string.delete "."
    string = string.delete ","
    string = string.delete ":"
    string = string.delete ";"
    if string == string.reverse
      return true
    end
    false
end


#is_vowel
  # determines whether a given character is a vowel
  # ignores case
  # handles weird inputs gracefully

def is_vowel(string)
    if string.is_a?(String) == false
      return false
    end
    string_array = []
    string = string.downcase
    string = string.split("")
    string.each do |letter|
      if letter == "a" || letter == "e" || letter =="i" || letter =="o" || letter =="u"
        string_array << letter
      end
  end
  if string_array.length == string.length
    return true
  else
    return false
  end
end


#add_period
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present

  def add_period(string)
    string = string.split("")
    if string[-1] == "." || string[-1] == "?" || string[-1] == "!"
      return string.join
    else
      string << "."
      return string.join
    end

  end


###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # counts the spaces in a string

  def count_spaces(string)
    count = 0
    string = string.split(//)
    string.each do |letter|
      if letter == " "
        count += 1
      end
    end
    count
  end

#string_lengths
  # converts a list of strings to a list of string lengths

  def string_lengths(array)
    string_lengths = []
    array.each do |element|
      string_lengths << element.length
    end
    string_lengths
  end

#remove_falsy_values
  # filters out falsy values from a list
  def remove_falsy_values(array)
    truthy_array = []
    array.each do |element|
      if element == true
        truthy_array << element
        puts truthy_array
      elsif element == nil
        array.delete_at(element)
      end

    truthy_array
    end
  end

#exclude_last
  # removes the last item from an array
  # removes the last item from a string

  def exclude_last(input)
    if input.is_a?(Array)
      array = []
      i = 0
      while i < input.length - 1
        array << input[i]
        i += 1
      end
      return array
    else input.is_a?(String)
      input = input.split("")
      input.delete_at(-1)
      return input.join
    end
  end

#exclude_first
  # removes the first item from an array
  # removes the first character from a string
  # does not alter the original input (non-destructive)

  def exclude_first(input)
    new_array = []
    if input.is_a?(Array)
      input.each do |element|
        new_array << element
      end
      new_array.shift
      return new_array
    elsif input.is_a?(String)
      input = input.split("")
      input.shift
      return input.join
    end
  end

#exclude_ends
  # removes the first and last items from an array
  # removes the first and last characters from a string

  def exclude_ends(input)
    if input.is_a?(Array)
      input.delete_at(0)
      input.delete_at(-1)
      return input
    elsif input.is_a?(String)
      input = input.split("")
      input.shift
      input.pop
      return input.join
    end
  end

#select_every_even
  # returns a list of even-indexed items

  def select_every_even(array)
    new_array = []
    i = 0
    while i < array.length
      if i % 2 == 0
        new_array << array[i]
      end
      i += 1
    end
    new_array
  end

#select_every_odd
  # returns a list of odd-indexed items

  def select_every_odd(array)
    new_array = []
    i = 0
    while i < array.length
      if i % 2 == 1
        new_array << array[i]
      end
      i += 1
    end
    new_array
  end

#select_every_n
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

  def select_every_n(array, n = 1)
    new_array = []
      i = 0
      while i < array.length
        if i % n == 0
          new_array << array[i]
        end
        i += 1
      end
      new_array
  end

#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol

def compile_agenda(agenda_items, order="DESC", bullet="*")
  sorted_agenda_items = agenda_items.sort_by {|o| o[:priority] }
  sorted_agenda_items.reverse! if order == "ASC"
  sorted_agenda_items.map {|o| "#{bullet} #{o[:title]}"  }.join("\n")
end

##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # returns an array containing every integer from 0 to n
  # rounds off decimals

  def count_to(n)
    num_array = []
    i = 0
    if n >= 0
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

#is_integer?
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

  def is_integer?(input)
    if input.is_a?(Integer) || (input.is_a?(Float) && input % 1 == 0)
      return true
    end
    false
  end

#is_prime?
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers

def is_prime?(num)
  if num <= 1 || num % 1 != 0
      return false
    else
    #try to divide number by all numbers in between it and 1. 
    divisor = 2
    while divisor < num
    rem_num = num % divisor 
      if rem_num == 0
        return false
      end
    divisor += 1
    end
  return true
  end
end


#primes_less_than
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

def is_prime_again?(number)

    #try to divide number by all numbers in between it and 1. 
    divisor = 2
    while divisor < number
    rem_num = number % divisor 
      if rem_num == 0
        return false
      end
    divisor += 1
    end
  return true
end

  def primes_less_than(num)
    primes_array = []
    i = 2
    while i < num 
      
      if is_prime_again?(i) == true
          primes_array << i
         
      end
     i += 1
    end
    primes_array
  end

#iterative_factorial
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates factorial

  def iterative_factorial(num)
    if num < 0 || num.is_a?(Integer) == false
      return Float::NAN
    else
      i = 1
      factorial = 1
      while i <= num
        factorial = i * factorial
        i += 1
      end
    end
    factorial
  end

##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # counts how many times each character appears in a string
  # ignores case

def character_count(str)

  character = str.downcase.split("")
  counts = Hash.new(0)
  character.each { |letter| counts[letter] += 1 }
  counts

end


#word_count
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z

def word_count(string)
  string = string.downcase
  string.gsub!(/[^a-z ]/,'')
  words = string.split
  counts = Hash.new(0)
  words.each { |word| counts[word] += 1 }
  counts
end


#most_frequent_word
  # finds the word in a string that appears with the most frequency

  def most_frequent_word(string)
  string = string.downcase
  string.gsub!(/[^a-z ]/,'')
  words = string.split
  counts = Hash.new(0)
  words.each { |word| counts[word] += 1 }
  counts.max_by{ |k,v| v }[0]
  end

