class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :created_at, :updated_at
  has_one :manufacturer
  has_many :sales
  has_many :rentals
end
