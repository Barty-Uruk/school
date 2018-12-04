Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index", as: "home"
  get "/home/about"  => "home#about", as: "about"

  get '/courses/index'  => 'courses#index', as: 'allcourses'
  resources :courses, :statuses, :lessons, :user_doc
end
