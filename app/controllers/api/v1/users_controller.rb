class Api::V1::UsersController < ApplicationController 
  def create 
    user = User.new(user_params)
    user.api_key = SecureRandom.hex(26)
    if user.save 
      render json: UserSerializer.new(user), status: 201
    else 
      render json: ErrorSerializer.taken_email, status: 400 
    end
  end

  private
  def user_params 
    params.permit(:id, :name, :email)
  end
end