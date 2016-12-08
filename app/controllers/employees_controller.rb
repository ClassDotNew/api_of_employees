class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render 'index.json.jbuilder'
  end

  def show
    @employee = Employee.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @employee = Employee.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      birthdate: params[:birthdate],
      ssn: params[:ssn]
      )
    render 'show.json.jbuilder'
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.first_name = params[:first_name] || @employee.first_name
    @employee.last_name = params[:last_name] || @employee.last_name
    @employee.email = params[:email] || @employee.email
    @employee.birthdate = params[:birthdate] || @employee.birthdate
    @employee.ssn = params[:ssn] || @employee.ssn
    @employee.save
    render 'show.json.jbuilder'
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    render json: {message: "You just deleted someone"}
  end
end
