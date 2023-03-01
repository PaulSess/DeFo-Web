Rails.application.routes.draw do
  devise_for :users
  root to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "about", to: "pages#about"
  get "home", to: "pages#home"
  
  get 'projects/index'
  get 'projects/show'

end
