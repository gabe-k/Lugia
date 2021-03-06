Rails.application.routes.draw do
  get '/events' => 'events#index'
  post '/events/new' => 'events#new'
  get '/events/following' => 'events#following'
  get '/events/tagged/:tag' => 'events#tagged'
  get '/events/:id' => 'events#show'
  get '/events/:id/users' => 'events#users'
  get '/users/:id/events' => 'users#events'
  get '/users/:id' => 'users#show'
  post '/users/new' => 'users#new'
  post '/events/:id/rsvp' => 'events#rsvp'
  get '/tags' => 'tags#index'
  post '/tags/follow' => 'tags#follow'
  get '/tags/following' => 'tags#following'
  get '/tags/:id' => 'tags#show'
  root 'events#index'
end
