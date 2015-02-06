Rails.application.routes.draw do
  get '/events' => 'events#index'
  get '/events/:id' => 'events#show'
  get '/events/:id/users' => 'events#users'
  get '/users/:id/events' => 'users#events'
  post '/users' => 'users#new'
  post '/events/:id/rsvp' => 'events#rsvp'
end
