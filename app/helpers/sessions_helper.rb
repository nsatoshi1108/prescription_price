module SessionsHelper
  def current_user
    @current_user ||= PharmacyUser.find_by(id: session[:pharmacy_user_id])
  end

  def logged_in?
    current_user.present?
  end
end
