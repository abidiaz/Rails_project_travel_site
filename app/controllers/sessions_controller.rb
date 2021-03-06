class SessionsController < ApplicationController

  def new
  end
 
  def create
    @user = User.find_by(name: params[:user][:name])
      if @user && @user.authenticate(params[:user][:password])
       session[:user_id] = @user.id 
       redirect_to user_path(@user)
    else
      redirect_to signin_path, notice: "Username or Password not correct"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    session[:user_id] = nil
    redirect_to countries_path
  end


end
