class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name
      t.date :date
      t.integer :new_mileage
      t.integer :current_mileage
      t.integer :latest_run
      t.decimal :price, precision: 10, scale: 2
      t.integer :user_id
    end
  end
end
