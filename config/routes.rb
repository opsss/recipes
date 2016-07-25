Rails.application.routes.draw do
	

	devise_for :users, :controllers => {:sessions => "sessions"}
	resources :recipes
	resources :users
	
	resource :search, only: [:show]
	
	root 'welcome#index'

end
