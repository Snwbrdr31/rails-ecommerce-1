class SignupController < ApplicationController
  def index
  end

  def create
    user= User.create(user_params)
    SignupMailer.new_signup(user).deliver
    binding.pry
    redirect_do root_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :email)]
    end
end
