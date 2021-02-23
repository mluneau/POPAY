Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :articles, only: [:show, :index]

  resources :discussions, only: [:new, :create, :index, :show, :delete] do
    resources :messages, only: [:new, :create]
  end

  namespace :hr do
    resource :dashboard, only: [:show]

    resources :users, only: [:index, :show]
    resources :transactions, only: [:index]
  end

  namespace :employee do
    resources :transactions, only: [:index, :new, :create]
  end

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

  resources :bank_accounts, only: [:new, :create]
  resources :subscriptions, only: [:new, :create]
<<<<<<< HEAD

  get 'about_us', to: "pages#about_us"
=======
  resources :companies, only: [:new, :create]

>>>>>>> 3f622edef49f0925f20aca2acc0ad7d8372166d0
end
