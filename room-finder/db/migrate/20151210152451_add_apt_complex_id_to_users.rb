class AddAptComplexIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Apt_complex_id, :integer
  end
end
