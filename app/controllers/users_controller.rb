class UsersController < ApplicationController
	def new
		@user = User.create name: params[:name], email: params[:email], auth_token: params[:auth_token]
	end

	def events
		@events = User.find(params[:id]).events
	end
end
