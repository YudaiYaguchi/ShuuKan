class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @companies = @user.companies.includes(:selections)
  end

end
