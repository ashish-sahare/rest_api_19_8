class WordsController < ApplicationController

	def index
		@words = Word.all
	end 

	# def create 
	# end 

	# def view 
	# end


end
