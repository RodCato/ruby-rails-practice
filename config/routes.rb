Rails.application.routes.draw do
  get '/blogs' => 'blog#index'

  get '/index' => 'blog#index'

  root to: 'blog#index'

  get '/blogs/new' => 'blog#new'
  post '/blogs' => 'blog#create'

  get '/blogs/:id' => 'blog#show', as: 'blog'
  
  delete '/blogs/:id' => 'blog#destroy', as: 'destroy_blog'
end
