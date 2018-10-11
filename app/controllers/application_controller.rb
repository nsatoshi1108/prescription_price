class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  autocomplete :medicine, :name, full: true # オートコンプリート用に追加
  autocomplete :dose_method, :take_point, full: true # オートコンプリート用に追加
end
