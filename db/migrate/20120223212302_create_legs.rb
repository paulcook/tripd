class CreateLegs < ActiveRecord::Migration
  def change
    create_table :legs do |t|
      t.string :location
      t.datetime :depart_arrive
      t.string :depart_arrive_type
      t.text :details
      t.timestamps
    end
  end
end
