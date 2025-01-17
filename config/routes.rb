Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'

  resources :message_rooms, only: [:new, :create, :show, :index]
  root 'message_rooms#index'
end
