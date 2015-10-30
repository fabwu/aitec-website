class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.text :temperature
      t.text :humidity
      t.text :pressure

      t.timestamps null: false
    end
  end
end
