json.id				event.id
json.name			event.name
json.description	event.description
json.location		event.location
json.image			event.image.url
json.start_time		event.start_time
json.end_time		event.end_time
json.attending_count	event.users.count
json.tags do
	json.array! event.tags, partial: 'tags/tag', as: :tag
end

json.user { json.partial! 'users/user', user: event.user } if event.user
json.user nil unless event.user