Rails.application.routes.draw do
  get "posts/index" => "posts#index"
  get "posts/new" => 'posts#new'
  post "posts/create" => 'posts#create'
  get "posts/:id/edit" => "posts#edit"
  get "posts/:id" => "posts#show"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get "/" => "home#top"
  get "about" => "home#about"
end