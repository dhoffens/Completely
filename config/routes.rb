Rails.application.routes.draw do

	root 'site#home'

	devise_for :users, controllers: {
		registrations: 'users/registrations'
	}

	resources :jobs
	
	resources :conversations, only: [:index, :show, :destroy] do
		member do
			post :reply
		end
	end

	resources :conversations, only: [:index, :show, :destroy] do 
		member do 
			post :restore
		end
	end

	resources :conversations, only: [:index, :show, :destroy] do
		member do
			post :mark_as_read
		end
	end

	resources :conversations, only: [:index, :show, :destroy] do
  		collection do
    		delete :empty_trash
  		end
	end

	resources :messages, only: [:new, :create]  

	scope :api do
		resources :jobs, only: [:index], controller: "jobs_api"
	end

	get '/purpose', to: 'site#purpose'
	get '/company', to: 'site#company'
	get '/contact', to: 'site#contact'
end