class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.name :string
      t.email :string

      t.timestamps
    end
  end
end
