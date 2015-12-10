class RemoveApartmentIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :Apartment_id, :integer
  end
end
