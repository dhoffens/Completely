class JobsController < ApplicationController

	def index
		@jobs = Job.all
	end

	def new
		@job = Job.new
	end

	def create
		new_job = Job.new(job_params)

		new_job.user_id = current_user.id

		if new_job.save
			redirect_to user_jobs_path(current_user)
		else
			@job = new_job

			render :new
		end
	end

	def show
		@the_job = Job.find(params[:id])
		@comment = Comment.new

		render :show
	end

 	private

  	def job_params
    	params.require(:job).permit(:name, :description, :budget_low, :budget_high, :zip, :digital)

  	end
end
