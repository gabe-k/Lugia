class EventsController < ApplicationController
	def index
		@events = Event.eager_load(:tags).all
	end

	def show
		@event = Event.eager_load(:tags).find params[:id]
	end

	def users
		@users = Event.eager_load(:users).find(params[:id]).users
	end

	def rsvp
		@event = Event.find params[:id]
		@event.users << current_user if current_user
	end

	def following
		@events = Event.joins('JOIN events_tags ON events_tags.event_id = events.id JOIN tags_users ON tags_users.tag_id = events_tags.tag_id').select('DISTINCT(events.id), events.*').where('tags_users.user_id = ?', current_user.id).where('events.start_time >= current_timestamp').order(:start_time) if current_user
	end

	def new
		@event = Event.create(name: params[:name], description: params[:description], start_time: params[:start_time], end_time: params[:end_time], image: params[:image], user: current_user)
		@event.add_tags(params[:tags].split(','))
	end
end
