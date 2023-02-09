class ClientMemSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_charges

  def total_charges
    object.memberships.sum(:charge)
  end

end
