class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :created_at, :name, :last_name, :document_id, :address, :phone, :role
end
