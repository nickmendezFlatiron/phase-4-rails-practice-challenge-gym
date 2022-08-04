class ClientSerializer < ActiveModel::Serializer
  attributes :id , :total
  has_many :memberships
  has_many :gyms

  def total
    self.object.memberships.sum {|m| m[:charge]}
  end 
end
