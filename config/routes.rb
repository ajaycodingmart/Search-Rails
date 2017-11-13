Rails.application.routes.draw do
  root 'home#index'
  get 'home/search_city/:data' => 'home#index'
  resources :home
end
