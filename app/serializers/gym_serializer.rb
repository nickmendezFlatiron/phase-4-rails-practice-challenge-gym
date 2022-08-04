class GymSerializer < ActiveModel::Serializer
  attributes :id , :name
  has_many :memberships
  has_many :clients
end
