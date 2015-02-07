class TagsController < ApplicationController
	def index
		@tags = Tag.first(params[:count]||50)
	end

	def follow
		current_user.follow_tags(params[:tags])
		@tags = current_user.tags
	end

	def following
		@tags = current_user.tags
	end

	def show
		@tag = Tag.find(params[:id])
	end
end
