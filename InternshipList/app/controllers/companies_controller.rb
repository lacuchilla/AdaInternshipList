class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @url = "create"
    @company = Company.new
    @legend = "Add a Company"
  end

  def create
    @company = Company.create(company_params[:company])
    redirect_to "/companies"
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    @url = "update"
    @legend = "Update Company Information"
    @company = Company.find(params[:id])
  end

  def update
    Company.update(params[:id], company_params[:company])
    redirect_to "/companies"
  end

  def destroy
    Company.destroy(params[:id])
    redirect_to "/companies/"
  end

private

  def company_params
    params.permit(company: [:name, :location, :description, :website])
  end
end
