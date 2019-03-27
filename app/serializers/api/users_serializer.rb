class Api::UsersSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
end
