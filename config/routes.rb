Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', confirmations: 'users/confirmations', passwords: 'users/passwords' }
  get 'users/currentsession', to: 'users#currentsession', as: :current_session

  resources :users do
    resources :movies
  end
  root 'welcome#index'
end
