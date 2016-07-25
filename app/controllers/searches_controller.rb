class SearchesController < ApplicationController
	def show
		@search = Recipe.search(params[:q], fields:[:title])
	end
end
