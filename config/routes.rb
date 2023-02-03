Rails.application.routes.draw do
  resources :channels do
    resource :channel_user
    resources :messages
  end
  devise_for :users
  root to: 'channels#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
