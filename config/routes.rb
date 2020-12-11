Rails.application.routes.draw do
  resources :journal_entries_tags
  resources :journal_entries_emotions
  resources :tags
  resources :emotions
  resources :journal_entries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, :defaults => { :format => 'json' }
      post '/login', to: 'auth#login'
      get '/profile', to: 'users#profile'
    end
  end
  # post '/login', to: 'auth#login'
  # get '/profile', to: 'users#profile'
end
