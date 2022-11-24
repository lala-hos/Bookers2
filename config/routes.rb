Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users

  resources :books
  resources :users

  get "/homes/about" => "homes#about", as: "about"
end
