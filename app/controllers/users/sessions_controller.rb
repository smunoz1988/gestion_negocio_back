class Users::SessionsController < Devise::SessionsController
    respond_to :json
    # additional custom methods
  end