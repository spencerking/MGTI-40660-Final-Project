class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.boolean :isAdmin
      t.references :Company, index: true, foreign_key: true
      t.references :City, index: true, foreign_key: true
      t.references :Apartment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
