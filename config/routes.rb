Rails.application.routes.draw do
  resources :perfils
  resources :usuarios
  resources :items
  root 'usuarios#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
