class JobsApiController < ApplicationController

	def index
		jobs_array = Job.all
		render json: jobs_array
	end
end
