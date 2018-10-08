Rails.application.routes.draw do

  resources :prescriptions do
    collection do
      post  :confirm
      get :autocomplete_medicine_name
    end
  end
  
  resources :users, only: [:new, :create, :show, :edit, :update] do
    collection do
      post  :confirm
    end
  end
end
