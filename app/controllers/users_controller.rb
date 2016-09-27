class UsersController < ApplicationController
	before_action :authenticate_user!

	def home
	@user = current_user
	render :home
  	end

  	def show
    @user = User.find_by(params[:id])
    render :show
  	end
end
