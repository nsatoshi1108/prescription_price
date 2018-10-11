class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_path(@user.id), notice: "ようこそ！#{@user.name}さん"
    else
      render 'new'
    end
  end

  def confirm
    @user = User.new(user_params)
    render :new if @user.invalid?
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user.id) ,notice: '編集しました'
    else
      render 'edit'
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :birthday, :postal, :address, :tel)
  end
end
