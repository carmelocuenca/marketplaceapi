class UserSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :email, :created_at, :updated_at, :authentication_token

  has_many :products
end
