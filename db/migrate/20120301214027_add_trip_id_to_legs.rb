class AddTripIdToLegs < ActiveRecord::Migration
  def change
    add_column :legs, :trip_id, :integer

  end
end
