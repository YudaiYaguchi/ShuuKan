class SelectionsController < ApplicationController

  
  def create
    company = Company.create!(name: params[:company][:name], user_id: params[:selection][:user_id])
    puts "date:: #{params[:selection][:date]}\n"
    if selection = company.selections.create!(selection_params)
      render json: { message: "選考情報が登録されました", selection: selection }, status: :created
    else
      render json: { error: selection.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def selection_params
    params.require(:selection).permit(:user_id,:selection_type, :date,:result, :status)
  end
end
