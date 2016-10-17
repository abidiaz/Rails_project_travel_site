class UsersController < ApplicationController
  before_action :find_user, only: [:show,  :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id 
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages
      # render 'new'
      redirect_to signup_path
    end
  end

  def edit

  end

  def update
    @user.update(user_params)

    if @user.save
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    session[:user_id] = nil
    @user.delete
    redirect_to countries_path
  end

  private
  def find_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
