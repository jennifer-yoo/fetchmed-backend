class UserSerializer < ActiveModel::Serializer
  attributes :id, :first, :last, :email, :password
end
