Rails.application.routes.draw do
  get 'messages/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :articles, only: [:show, :index]

  resources :discussions, only: [:new, :create] do
    resources :messages, only: [:create]
  end

  namespace :hr do
    resource :dashboard, only: [:show]

    resources :users, only: [:index, :show]
    resources :transactions, only: [:index]
  end

  namespace :employee do
    resources :transactions, only: [:index, :new, :create]
  end

end
