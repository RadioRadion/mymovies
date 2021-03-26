Rails.application.routes.draw do
  resources :tv_shows
  resources :artists do
    collection do
      get 'compare'
    end
  end
  resources :movies
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
