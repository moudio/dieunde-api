class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :telephone, :isadmin, :confirmed?
  has_many :favorite_products
end
