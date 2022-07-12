Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "pages#home"
  resources :lists, only: [:index, :new, :show, :create, :destroy] do
    resources :bookmarks, only: [:create, :new, :destroy]
  end
  # resources :bookmarks, only: :destroy
end
