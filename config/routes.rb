Rails.application.routes.draw do
  get 'prices/insert'

  resources :users, only: [:new, :create, :show, :edit, :update] do
    collection do
      post  :confirm
    end
  end
end
