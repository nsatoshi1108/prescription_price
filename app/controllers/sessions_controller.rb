class SessionsController < ApplicationController
  def new
  end

  def create
    pharmacy_user = PharmacyUser.find_by(email: params[:session][:email].downcase)
    if pharmacy_user && pharmacy_user.authenticate(params[:session][:password])
      session[:pharmacy_user_id] = pharmacy_user.id
      redirect_to pharmacy_user_path(pharmacy_user.id)
    else
      flash[:danger] = 'ログインに失敗しました'
      render 'new'
    end
   end

   def destroy
     session.delete(:user_id)
     flash[:notice] = 'ログアウトしました'
     redirect_to new_session_path
   end

end
