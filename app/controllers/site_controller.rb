class SiteController < ApplicationController

	def home
		render :home
	end

	def purpose
		render :purpose
	end

	def company
		render :company
	end

	def contact
		render :contact
	end
end
