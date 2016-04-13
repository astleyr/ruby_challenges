require 'spec_helper'

describe ArraySummer do

	let (:data_array) {['test', 'qwerty', 'racecar', 'invalid', 'kayak']}
	let (:palindromes)   {['racecar', 'kayak']}

	before :each do
		@palindrome = Palindrome.new(data_array)
	end

	context "initialise"  do
		it "should create a new object with correct given array parameters" do
			expect(@palindrome.instance_variable_get(:@words)).to eql data_array
		end
	end

	context "palindrome" do
		it "should return a valid palindrome" do
			expect(@palindrome.find_palindrome).to eql palindromes
		end
	end
end