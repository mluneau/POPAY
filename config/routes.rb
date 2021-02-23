Rails.application.routes.draw do
  get 'subscriptions/new'
  get 'subscriptions/create'
  namespace :employee do
    get 'transactions/index'
    get 'transactions/create'
    get 'transactions/new'
  end
  namespace :hr do
    get 'transactions/index'
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :articles, only: [:show, :index]

  resources :dicussions, only: [:new, :create] do
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

  resources :bank_accounts, only: [:new, :create]
  resources :subscriptions, only: [:new, :create]
end
