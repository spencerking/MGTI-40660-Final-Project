class CreateAptComplexes < ActiveRecord::Migration
  def change
    create_table :apt_complexes do |t|
      t.string :street
      t.text :description
      t.integer :floors
      t.references :City, index: true, foreign_key: true
      t.references :Company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
