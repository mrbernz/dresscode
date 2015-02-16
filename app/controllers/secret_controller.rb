class SecretController < ApplicationController
  # def show
  #   valid_user = session[:valid_user]
  #   if valid_user
  #     render :show
  #   else
  #     redirect_to '/login'
  #   end
  # end

  def show
    @user = User.find_by(id: session[user_id])
    if @user
      render :new
    else
      redirect_to '/login'
    end
  end
end
