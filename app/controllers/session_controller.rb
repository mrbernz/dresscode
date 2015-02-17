class SessionController < ApplicationController
  def new
    render :new
  end

  # def create
  #   if params[:password] == Rails.application.secrets.secret_password # find_by(password_digest: params[:password])
  #     session[:valid_user] = true
  #     redirect_to '/secret'
  #   else
  #     @error = true
  #     render :new
  #   end
  # end
  # def destroy
  #   reset_session
  #   redirect_to '/login'
  # end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      @error = true
      render :new
    end
  end
  def destroy
    reset_session
    redirect_to '/login'
  end
  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
