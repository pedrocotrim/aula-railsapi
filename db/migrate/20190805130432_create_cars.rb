class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.references :manufacturer, foreign_key: true
      t.integer :quantity
      t.integer :sale_price
      t.integer :day_price
      t.integer :month_price
      t.integer :year_price

      t.timestamps
    end
  end
end
