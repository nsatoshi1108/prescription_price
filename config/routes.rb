Rails.application.routes.draw do

  devise_for :users

  # #devise追加機能にuser/indexがない為アクションを追加
  # resources :users, only: [:index, :show]

  resources :prescriptions do
    collection do
      post  :confirm
      get :autocomplete_medicine_name
      get :autocomplete_dose_method_take_point
    end
  end

  #devise〜ログイン完了後リダイレクトさせるリンク先を指定
  root 'prescriptions#index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
