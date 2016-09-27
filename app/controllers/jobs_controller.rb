class JobsController < ApplicationController

	def index
		@user = current_user
		@jobs = Job.all
	end

	def new
		@user = current_user
		@job = Job.new
	end

	def create
	end
end
