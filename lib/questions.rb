def select_elements_starting_with_a(array)
  array.select {|element| element[0] == 'a'}
end

def select_elements_starting_with_vowel(array)
  array.select {|element| ['a','e','i','o','u'].include?(element[0])}
end

def remove_nils_from_array(array)
  array.compact
end

def remove_nils_and_false_from_array(array)
  array.compact.delete_if {|element| element == false}
end

def reverse_every_element_in_array(array)
  array.map(&:reverse)
end

def every_possible_pairing_of_students(array)
  array.combination(2)
end

def all_elements_except_first_3(array)
  array.drop(3)
end

def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

def array_sort_by_last_letter_of_word(array)
  array.sort_by {|string| string.reverse.chop }
end

def get_first_half_of_string(string)
  string.slice(0, (string.length / 2.0).ceil)
end

def make_numbers_negative(number)
  number.abs * -1
end

def separate_array_into_even_and_odd_numbers(array)
  [array.select(&:even?), array.select(&:odd?)]
end


def number_of_elements_that_are_palindromes(array)
  def is_palindrome?(string)
    return false if string[0] != string [-1]
    return true if string.length <= 1
    is_palindrome?(string[1..-2])
  end
  array.select {|element| is_palindrome?(element) }.length
end

def shortest_word_in_array(array)
  array.sort_by(&:length).first
end

def longest_word_in_array(array)
  array.sort_by(&:length).last
end

def total_of_array(array)
  array.inject(:+)
end

def double_array(array)
  array += array
end

def turn_symbol_into_string(symbol)
  symbol.to_s
end

def average_of_array(array)
  (array.inject(:+) / array.length.to_f).ceil
end

def get_elements_until_greater_than_five(array)
  array.take_while {|element| element <= 5}
end

def convert_array_to_a_hash(array)
  Hash[*array]
end

def get_all_letters_in_array_of_words(array)
  array.join('').chars.uniq.sort
end

def swap_keys_and_values_in_a_hash(array)
  array.invert
end

def add_together_keys_and_values(hash)
  hash.to_a.flatten.inject(:+)
end

def remove_capital_letters_from_string(string)
  string.chars.delete_if {|letter| ("A".."Z").include?(letter)}.join
end

def round_up_number(number)
  number.ceil
end

def round_down_number(number)
  number.floor
end

def format_date_nicely(date)
  date.strftime('%d/%m/%Y')
end

def get_domain_name_from_email_address(email_address)
  email_address.gsub(/.+@([^.]+).+/, '\1')
end

def titleize_a_string(string)
  title = string.split(' ').map do |word|
    ignored_words = ['and','the','on','a','in','of']
    ignored_words.include?(word) ? word : word.capitalize
  end
  title.first.capitalize!
  title.join(' ')
end

def check_a_string_for_special_characters(string)
  special_characters = ["!","@"]
  special_characters.each do |character|
    return true if string.chars.include?(character)
  end
  return false
end

def get_upper_limit_of(range)
  range.end
end

def is_a_3_dot_range?(range)
  range.exclude_end?
end

def square_root_of(number)
  Math.sqrt(number)
end

def word_count_a_file(file_name)
  word_count = 0
  File.open("./#{file_name}", "r") do |file|
    file.each_line do |line|
      word_count += line.split(' ').length
    end
  end
  word_count
end

def is_a_2014_bank_holiday?(date)
  bank_holidays = [
    Time.new(2014,1,1),
    Time.new(2014,4,18),
    Time.new(2014,4,21),
    Time.new(2014,5,5),
    Time.new(2014,5,26),
    Time.new(2014,8,25),
    Time.new(2014,12,25),
    Time.new(2014,12,26)
  ]
  bank_holidays.include?(date)
end

def your_birthday_is_on_a_friday_in_the_year(birthday)
  #Tiem? Wish it were Daet!
  loop do
    return birthday.year if  birthday.friday?
    birthday = Time.new(*(birthday.to_a[5]+=1))
  end
end

def count_words_of_each_length_in_a_file(file_name)
  count_of_words_and_length = Hash.new(0)
  punctuation = ["'", ",", "."]
  File.open("./#{file_name}", "r") do |file|
    file.each_line do |line|
      punctuation.each {|mark| line.delete!(mark)}
      line.split(' ').each do |word|
        count_of_words_and_length[word.length] += 1
      end
    end
  end
  count_of_words_and_length
end