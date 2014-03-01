class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.text :name
      t.integer :population
      t.integer :elevation
      t.text :state

      t.timestamps
    end
  end
end
