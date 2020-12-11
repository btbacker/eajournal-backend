class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]
 
  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end
 
  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update 
    @user = User.find_by_id(params[:id])
    @user.update(user_params)
    if @user.valid?
      payload = {user_id: @user.id}
      token = encode_token(payload)
      render json: {user: UserSerializer.new(@user), token: token}
    else
      render json: {error: @user.errors.full_messages}, status: :not_acceptable
    end
  end 

  def destroy
    user = User.find(params[:id])
    user.destroy
  end
 
  private
 
  def user_params
    params.require(:user).permit(:name, :password, :email)
  end
end
