class AddNameToAptComplex < ActiveRecord::Migration
  def change
    add_column :apt_complexes, :name, :string
  end
end
