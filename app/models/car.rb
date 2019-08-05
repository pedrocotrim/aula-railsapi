class Car < ApplicationRecord
  belongs_to :manufacturer
  has_many :sales
  has_many :rentals

  def available?
    self.quantity != 0
  end

  def decrement
    self.quantity -= 1
    self.save
  end

  def more
    self.quantity += 1
    self.save
  end

end
