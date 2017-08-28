require_relative 'Guess_What'
describe Guess_What do 
	it "ensures guess_count <= word_enter.length" do 
       expect(Guess_What.@guess.length).to_i eq word_enter.length
	end 

	