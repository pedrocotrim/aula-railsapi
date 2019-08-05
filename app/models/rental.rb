class Rental < ApplicationRecord
  belongs_to :car

  def calculate_final_price
    
    days = (ending - beginning).to_i
    years = days % 360
    days = (days / 360).to_i
    months = days % 30
    days = (days / 30).to_i
    final = (car.year_price * years) + (car.month_price * months) + (car.day_price * days)
    total = final
    ssave
  end

end
