Rails.application.routes.draw do
  root "todo_lists#index"

  resources :todo_lists do
    resources :todo_items, only: [:create, :destroy] do
      member do
       patch :complete
      end
    end
  end
end
