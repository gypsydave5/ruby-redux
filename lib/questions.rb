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

end