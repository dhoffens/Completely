Rails.application.routes.draw do

root 'site#home'
devise_for :users
resources :users do
	resources :jobs do
		resources :comments 
	end
end
get '/purpose', to: 'site#purpose'
get '/company', to: 'site#company'
get '/contact', to: 'site#contact'
end