class UsersController < ApplicationController
	before_filter :authenticate_user!
	before_action :set_recipe, only: [:show]
	
	def show
	end

	private
	def set_recipe
		@user = User.find(params[:id])
		@user_recipes = @user.recipes
	end

end
