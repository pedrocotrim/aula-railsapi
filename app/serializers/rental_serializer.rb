class RentalSerializer < ActiveModel::Serializer
  attributes :id, :beginning, :ending, :total
  has_one :car
end
