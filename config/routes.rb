Rails.application.routes.draw do
	
	devise_for :users
	resources :recipes
	resources :users
	
	root 'welcome#index'

end
