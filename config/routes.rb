Rails.application.routes.draw do

<<<<<<< HEAD
  get 'prices/insert'
=======
  resources :prescriptions do
    collection do
      post  :confirm
      get :autocomplete_medicine_name
      get :autocomplete_dose_method_take_point
    end
  end
>>>>>>> upstream/master

  resources :session, only: [:new, :create, :destroy]

  resources :users, only: [:index, :new, :create, :show, :edit, :update] do
    collection do
      post  :confirm
    end
  end

end
