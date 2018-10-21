class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  autocomplete :medicine, :name, full: true # オートコンプリート用に追加
  autocomplete :dose_method, :take_point, full: true # オートコンプリート用に追加
  before_action :configure_permitted_parameters, if: :devise_controller? #devise用の追加したカラムにストロングパラメーターを設定する為

  protected
  #devise用ストロングパラメータ設定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :birthday, :postal, :address, :tel])
  end


end
