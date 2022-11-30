Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users

  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  resources :books
  resources :users

  #resources :post_images, only: [:new, :index, :show]

  get "/home/about" => "homes#about", as: "about"

end
