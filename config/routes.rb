Rails.application.routes.draw do
  get 'appointments/index'
  get 'appointments/show'
  get 'appointments/new'
  get 'appointments/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :articles, only: [:show, :index]

  resources :discussions, only: [:new, :create, :index, :show, :delete] do
    resources :messages, only: :create
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
  resources :companies, only: [:new, :create]
  resources :appointments, only: [:new, :create, :index, :show]

  get 'about_us', to: "pages#about_us"

end
