require 'minitest/autorun'
require './methods_quiz'

# TODO - write tests here

describe 'Methods' do

	describe 'has_teen?' do

		it 'a is a teen' do
			has_teen?(13,10,10).must_equal(true)
		end

		it 'b is a teen' do
			has_teen?(10,13,10).must_equal(true)
		end

		it 'c is a teen' do
			has_teen?(10,10,13).must_equal(true)
		end

		it 'nothing is a teen' do
			has_teen?(10,4,3).must_equal(false)
		end

		it 'a and b are teens' do
			has_teen?(13,13,10).must_equal(true)
		end

		it 'a and c are teens' do
			has_teen?(13,10,13).must_equal(true)
		end

		it 'b and c are teens' do
			has_teen?(10,13,13).must_equal(true)
		end

		it 'all are teens' do
			has_teen?(13,13,13).must_equal(true)
		end

	end

	describe 'not_string' do

		it 'does not start with "not"' do
			not_string("cool").must_equal("not cool")
		end

		it 'does start with not' do
			not_string("not cool").must_equal("not cool")
		end

	end

	describe 'icy_hot?' do

		it 'one is icy and the other is hot' do
			icy_hot?(-20,200).must_equal(true)
		end

		it 'both are icy' do
			icy_hot?(-20,-20).must_equal(false)
		end

		it 'both are hot' do
			icy_hot?(200,200).must_equal(false)
		end

	end

	describe 'closer_to' do

		it 'a is closer' do
			closer_to(9,3,10).must_equal(9)
		end

		it 'b is closer' do
			closer_to(3,9,10).must_equal(9)
		end

		it 'both are same distance' do
			closer_to(9,9,10).must_equal(0)
		end

	end

	describe 'two_as_one?' do

		it 'a+b=c' do
			two_as_one?(5,5,10).must_equal(true)
		end

		it ' b+c=a' do
			two_as_one?(10,5,5).must_equal(true)
		end

		it 'a+c=b' do
			two_as_one?(5,10,5).must_equal(true)
		end

		it 'no possible combinations' do
			two_as_one?(2,2,2).must_equal(false)
		end

	end

	describe 'pig_latinify' do

		it 'word starts with a consonant' do
			pig_latinify("BaDgEr").must_equal("adgerbay")
		end

		it 'word starts with a vowel' do
			pig_latinify("AsTeRiSk").must_equal("asteriskway")
		end
		
	end

end