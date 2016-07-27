Rails.application.routes.draw do
	

	devise_for :users, :controllers => {:sessions => "sessions"}
	resources :recipes do
  collection do
    get :autocomplete
  end
end
	resources :users
	
	resource :search, only: [:show]
	
	root 'welcome#index'

end
