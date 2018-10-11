Rails.application.routes.draw do

  get 'prices/insert'

  resources :session, only: [:new, :create, :destroy]

  resources :users, only: [:index, :new, :create, :show, :edit, :update] do
    collection do
      post  :confirm
    end
  end

end
