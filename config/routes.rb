Rails.application.routes.draw do
	
	devise_for :users, :controllers => {:sessions => "sessions"}
	resources :recipes
	resources :users
	
	root 'welcome#index'

end
