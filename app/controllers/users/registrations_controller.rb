class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def create
    build_resource(sign_up_params)

    resource.save
    if resource.persisted?
      if resource.active_for_authentication?
        render json: { message: "Successfully registered", user: resource }, status: :created
      else
        render json: { message: "Signed up but inactive", user: resource }, status: :ok
      end
    else
      render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
