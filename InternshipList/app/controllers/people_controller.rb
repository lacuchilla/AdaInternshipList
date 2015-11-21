class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @url = "create"
    @legend = "Add a Contact"
    @person = Person.new
  end

  def create
    Person.create(person_params[:person])
    redirect_to "/companies/#{@company.id}/people"
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
    params.permit(task: [:name, :title, :email, :company_id])
  end
end
