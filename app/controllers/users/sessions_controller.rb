class Users::SessionsController < Devise::SessionsController
  respond_to :json

  # This is Devise's method for signing in a user
  # Override it to customize the sign-in process
  def create
    self.resource = warden.authenticate!(auth_options)
    if resource
      sign_in(resource_name, resource)
      render json: { message: 'Login successful', user: resource }, status: :ok
    else
      render json: { error: 'Invalid credentials' }, status: :unauthorized
    end
  end
end
