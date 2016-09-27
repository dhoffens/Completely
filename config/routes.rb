Rails.application.routes.draw do

root 'site#home'
devise_for :users

resources :users do
	resources :jobs do
		resources :comments 
	end
end


end
