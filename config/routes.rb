Rails.application.routes.draw do
  # collection
  # member
  #/restaurants/top
  resources :restaurants do
    collection do
      # get '/restaurants/top', to: 'restaurants#top'
      get :top
    end

    member do
      # /restaurnts/:id/chef
      get :chef
    end

    resources :reviews, only: [:new, :create]

  end

  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
