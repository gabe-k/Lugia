class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def show
		@event = Event.find params[:id]
	end

	def users
		@users = Event.find(params[:id]).users
	end

	def rsvp
		@event = Event.find params[:id]
		@event.users << current_user if current_user
	end
end
