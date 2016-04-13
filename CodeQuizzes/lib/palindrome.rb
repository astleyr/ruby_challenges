#!/usr/bin/ruby

# Finds a palindrome in an array of strings
class Palindrome
  attr_reader :words

  def initialize(words)
    @words = words
  end

  def find_palindrome
    @words.select { |word| word.to_s if palindrome?(word.chomp) }
  end

  private

  def palindrome?(word)
    word == word.reverse ? true : false
  end
end

# tests							 = File.readlines('test_files/list_of_palindromes.txt')
# palindrome_checker = Palindrome.new(tests)

# palindrome_checker.find_palindrome
