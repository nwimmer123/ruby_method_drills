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
  # def to_telegram(string)
  #   string = string.split(//)
  #   puts string

  #   i = 0
  #     while i < string.length
  #       if string[i] == "h"
  #         string[i] = "k"
  #       end
  #     end
  #   # string.each do |letter|
  #   #   if letter == "."
  #   #     letter = " STOP"
  #   #   end
  #   # end
  #   puts string
  #   string.join 
  # end

  # puts to_telegram("hello.")
 

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

  puts seperate("hey")

#croon
  # seperates word characters with dashes
  # preserves whitespace between words

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

#is_vowel
  # determines whether a given character is a vowel
  # ignores case
  # handles weird inputs gracefully

#add_period
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present


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
      end
    truthy_array
    end
  end

puts remove_falsy_values([0, "", nil, false, -1]) 


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

#is_prime?
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers

#primes_less_than
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

#iterative_factorial
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates factorial



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # counts how many times each character appears in a string
  # ignores case

#word_count
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z

#most_frequent_word
  # finds the word in a string that appears with the most frequency
