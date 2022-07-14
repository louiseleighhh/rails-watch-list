Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "pages#home"
  root to: 'lists#index'
  resources :lists, only: [:index, :new, :show, :create, :destroy] do
    resources :bookmarks, only: [:create, :new, :destroy]
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: :destroy
end
