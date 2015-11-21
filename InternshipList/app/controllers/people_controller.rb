class PeopleController < ApplicationController
  def index
    @company_id = params[:company_id]
    @people = Person.where(company_id: params[:company_id])
  end

  def new
    @url = "create"
    @legend = "Add a Contact"
    @person = Person.new
  end

  def create
    p = Person.create(person_params[:person])
    redirect_to company_people_path(params[:company_id])
  end

  def show
    @person = Person.find(params[:id])
    @company = Company.find(@person.company_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def person_params
    params.permit(person: [:name, :title, :email, :company_id])
  end
end
