class PeopleController < ApplicationController
  def index
    @company_id = params[:company_id]
    @company = Company.find(@person.company_id(params[:id]))
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
    @url = "edit"
    @legend = "Update a Contact"
    @person = person_params[:person][:company_id]
  end

  def update
  end

  def destroy
      Person.destroy(params[:id])
      redirect_to "/companies/#{@person.company.id}/people"
  end

  private

  def person_params
    params.permit(person: [:name, :title, :email, :company_id])
  end
end
