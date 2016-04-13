#!/usr/bin/ruby

# Accepts an array of integers and sums indvidual integers of an element
# Usage:
# tests  = File.readlines('test_files/list_of_integers.txt')
# summer = ArraySummer.new(tests)
# summer.calc_sum_to
class ArraySummer
  attr_reader :integers

  def initialize(integers)
    @integers = integers.select {|integer| integer.is_a? Integer}
    @sum      = 0
  end

  def calc_sum_total
    @integers.each do |integer|

      int_chars = integer.to_s.chars
      sum_char_of_integer int_chars
    end
  end

  def sum
    @sum
  end

  private

  def sum_char_of_integer(integer)
    integer.inject(@sum) do |_, num|
      @sum += num.to_i
    end
  end
end