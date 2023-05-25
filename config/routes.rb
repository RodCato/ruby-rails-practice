Rails.application.routes.draw do
  get '/blogs' => 'blog#index'

  get '/index' => 'blog#index'

  root to: 'blog#index'
end
