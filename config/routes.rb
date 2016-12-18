Rails.application.routes.draw do
  get 'configs/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :devices
  resources :configs

  root 'devices#index'
end
