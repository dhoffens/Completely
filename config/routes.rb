Rails.application.routes.draw do

root 'site#home'

devise_for :users, controllers: {
	registrations: 'users/registrations'
}

resources :users do
	resources :jobs do
		resources :conversations, only: [:index, :show, :destroy]
	end
end 

scope :api do
	resources :jobs, only: [:index], controller: "jobs_api"
end

get '/jobs', to: "jobs#index"
get '/purpose', to: 'site#purpose'
get '/company', to: 'site#company'
get '/contact', to: 'site#contact'
end