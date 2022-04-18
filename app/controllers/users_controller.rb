class UsersController < ApplicationController

  def index
    users = User
              .by_company(params[:company_id])
              .by_username(params[:username])
    render json: users.all
  end

  private

  def permitted_params
    params.permit(:username, :company_id)
  end
end
