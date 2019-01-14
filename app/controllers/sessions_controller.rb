class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username:params[:session][:username])

    if user && user.authenticate(params[:session][:password])
        session[:user_id]=user.id
        flash[:success]="Welcome Sir...or Mam....okay I don't know just Welcome"
        redirect_to user_path(user.id)
    else
    flash.now[:danger]="I am Saw-Ry Wrong Password"
    render 'new'
    end

  end

  def destroy
    session[:user_id]=nil
    flash[:danger] = "Everyone Left Me Now you too, Come Back Later!"
    redirect_to root_path
  end

end

