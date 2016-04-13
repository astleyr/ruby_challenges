require 'spec_helper'

describe ArraySummer do

	let (:data_array)     {[0,1,2,10,11,12,'a',:qwerty]}
	let (:int_data_array) {[0,1,2,10,11,12]}
	let (:total_sum)      {9}

	before :each do
		@array_summer = ArraySummer.new(data_array)
	end

	context "initialise"  do
		it "should create a new object with correct given array parameters" do
			expect(@array_summer.instance_variable_get(:@integers)).to eql int_data_array
		end
		it "should have create a sum instance variable initialised to zero" do
			expect(@array_summer.instance_variable_get(:@sum)).to eql 0
		end
	end

	context "calculate" do
		it "should calculate the total sum of the integers for each array element" do
			@array_summer.calc_sum_total
			expect(@array_summer.sum).to eql total_sum
		end
	end
end