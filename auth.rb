class Authentication
  def auth
    user = User.find_by(username: params[:username])
    if user && user.check_password(params[:password])
      render json: user
    else
      render json: { errors: ["wrong username or password"] }, status: :unauthorized
    end
  end
end
