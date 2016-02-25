class SessionsController < ActionController::Base
  authem_for :user

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      sign_in(user)
      redirect_back_or_to(root_path)
    else
      flash.now.alert = "Your email and password do not match"
      render :new
    end
  end

  def destroy
    sign_out_user
    redirect_to :root
  end
end
