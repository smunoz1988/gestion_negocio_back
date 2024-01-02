Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'
  namespace :api do
    namespace :v1 do
      resources :professionals, only: [:index, :show, :create, :update, :destroy]
    end
  end
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end