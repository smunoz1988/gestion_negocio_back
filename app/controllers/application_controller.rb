class ApplicationController < ActionController::API
    before_action :configured_permitted_parameters, if: :devise_controller?

    protected

    def configured_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :name, :last_name, :document_id, :address, :phone, :role])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :last_name, :document_id, :address, :phone, :role])
    end
end
