Rails.application.routes.draw do
  get '/movie/:id' => 'application#show' 
  get '/movie/:id/edit' => 'application#edit'
  get '/movie/:id/destroy' => 'application#destroy' #
  get '/editing/:id' => 'application#editing'
  get '/new_movie' => 'application#new'
  get '/making_movie' => 'application#making_movie'
  get '/movie' => 'application#movie'

end
