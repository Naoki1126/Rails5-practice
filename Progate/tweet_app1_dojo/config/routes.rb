Rails.application.routes.draw do
  get "/" => "home#top"
  get 'about' => 'home#about'
  get 'posts/index' => 'home#index'
  get 'posts/:id' => 'home#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
