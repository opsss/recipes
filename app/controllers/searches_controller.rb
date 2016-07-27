class SearchesController < ApplicationController
	def show
		@search = Recipe.search(params[:query], fields:[:title])
	end

end
