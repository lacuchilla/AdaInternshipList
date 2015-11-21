class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @url = "create"
    @company = Company.new
  end

  def create
    @company = Company.create(company_params[:company])
    redirect_to "/companies"
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    Company.destroy(params[:id])
  end

private

  def company_params
    params.permit(company: [:name, :location, :description, :website])
  end
end
