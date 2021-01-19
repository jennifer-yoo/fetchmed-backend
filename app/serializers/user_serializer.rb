class UserSerializer < ActiveModel::Serializer
  attributes :id, :first, :last, :email, :password

  has_many :orders, include: :all
  has_many :medications, include: :all
end
