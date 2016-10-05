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

	resources :messages, only: [:new, :create]  
	

	scope :api do
		resources :jobs, only: [:index], controller: "jobs_api"
	end

	get '/purpose', to: 'site#purpose'
	get '/company', to: 'site#company'
	get '/contact', to: 'site#contact'
end