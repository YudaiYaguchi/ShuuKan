class CompaniesController < ApplicationController
  before_action :set_user
  before_action :set_company, only: [:edit, :update, :show]

  def index
    @companies = @user.companies
  end

  def show
  end

  def new
    @company = Company.find(params[:company_id]) if params[:company_id].present?
  end

  def create
    @company = @user.companies.build(company_params)
    if @company.save
      redirect_to user_companies_path(@user), notice: "企業情報を登録しました。"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @company.update(company_params)
      redirect_to user_companies_path(@user), notice: "企業情報を更新しました。"
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_company
    @company = @user.companies.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :industry, :location, :website)
  end
end
