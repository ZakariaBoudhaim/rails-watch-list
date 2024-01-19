Rails.application.routes.draw do
  root 'movies#index'
  resources :lists, only: [:index, :show, :new, :create, :edit, :destroy ] do
    resources :bookmarks, only: [:new, :create, :show]
    delete "bookmarks/:id",      to: "bookmarks#destroy", as: "destroy_book"
    resources :movies, only: [:index, :show]
  end
  resources :movies, only: [:index, :show]
  resources :bookmarks, only: [:destroy]
end
