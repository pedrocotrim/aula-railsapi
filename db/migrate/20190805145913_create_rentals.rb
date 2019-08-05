class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.date :beginning
      t.date :ending
      t.references :car, foreign_key: true
      t.integer :total

      t.timestamps
    end
  end
end
