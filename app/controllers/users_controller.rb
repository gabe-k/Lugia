class UsersController < ApplicationController
	def new
		@user = User.create name: params[:name], email: params[:email], auth_token: params[:auth_token], image: params[:image]
	end

	def events
		@events = User.find(params[:id]).events
	end

	def show
		@user = User.find(params[:id])
	end
end
