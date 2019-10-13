class Authentication
  # please improve this rails action,
  # if you'd like to put some code in another file please state so:
  # authentication API
  def auth
    user = User.find(params[:username])
    if user.check_password(params[:password])
      render json: user
    else
      render json: { errors: ["wrong username or password"] }, status: :unauthorized
    end
  end

end