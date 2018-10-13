Rails.application.routes.draw do

  resources :prescriptions do
    collection do
      post  :confirm
      get :autocomplete_medicine_name
      get :autocomplete_dose_method_take_point
    end
  end

  resources :users, only: [:new, :create, :show, :edit, :update] do
    collection do
      post  :confirm
    end
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
end
