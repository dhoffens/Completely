Rails.application.routes.draw do

root 'site#home'
devise_for :users

resources :users do
	resources :jobs 
end

end
