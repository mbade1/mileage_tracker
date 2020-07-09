class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.integer :miles_run
      t.date :date
      t.string  :location
      t.integer :shoe_id
    end
  end
end