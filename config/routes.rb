Rails.application.routes.draw do
  devise_for :users
  root to: 'employee/dashboards#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :articles, only: [:show, :index]

  resources :discussions, only: [:new, :create, :index, :show] do
    resource :messages, only: :create
  end

  namespace :hr do
    resource :dashboard, only: [:show]
    resources :users, only: [:index, :show]
    resources :transactions, only: [:index]
  end

  namespace :employee do
    resource :dashboard, only: [:show]
    resources :appointments, only: [:new, :create]
    resources :transactions, only: [:index, :new, :create, :show] do
      member { get :confirmation }
    end
  end

  resources :bank_accounts, only: [:new, :create]
  resources :subscriptions, only: [:new, :create]
  resources :companies, only: [:new, :create]


  get 'profile', to: "pages#profile"
  get 'home', to: "pages#home"
  get 'about_us', to: "pages#about_us"

end
