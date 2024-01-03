class Api::V1::ProfessionalsController < ApplicationController
  # create professionals
  def create
    @professional = Professional.new(professional_params)
    if @professional.save
      render json: @professional, status: :created
    else
      render json: @professional.errors, status: :unprocessable_entity
    end
  end

  # get ALL professionals
  def index
    professionals = Professional.all
    render json: professionals, status: :ok
  end

  # get ONE professional
  def show
    professional = Professional.find(params[:id])
    render json: professional, status: :ok
  end

  # update ONE professional
  def update
    professional = Professional.find(params[:id])
    if professional.update(professional_params)
      render json: professional, status: :ok
    else
      render json: professional.errors, status: :unprocessable_entity
    end
  end

  # delete ONE professional
  def destroy
    professional = Professional.find(params[:id])
    professional.destroy
    render json: professional, status: :ok
  end

  def professional_params
    params.require(:professional).permit(:name, :last_name, :document_id, :email, :phone, :role, :address, :birthday, :photo)
  end
end
