class User < ActiveRecord::Base
  ### ... stubbed code
  
  def check_password(password_params)
    password == password_params
  end
end
