class SaleSerializer < ActiveModel::Serializer
  attributes :id
  has_one :car
end
