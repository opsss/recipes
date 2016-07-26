class UsersController < ApplicationController
	layout "users"
	before_filter :authenticate_user!
	before_action :set_recipe, only: [:show]

	def index
	end
	
	def show
	end

	private
	def set_recipe
		@user = User.find(params[:id])
		@user_recipes = @user.recipes
	end

end
