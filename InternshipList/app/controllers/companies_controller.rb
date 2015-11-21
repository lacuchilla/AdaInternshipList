class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params[:company])
    redirect_to "/companies"
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def company_params
    params.permit(company: [:name, :location, :description, :website])
  end
end
