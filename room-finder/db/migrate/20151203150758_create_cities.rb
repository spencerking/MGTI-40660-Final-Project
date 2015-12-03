class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :state
      t.integer :population

      t.timestamps null: false
    end
  end
end
