class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :floor
      t.integer :room
      t.float :price
      t.text :description
      t.boolean :isVacant
      t.references :Apt_complex, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
