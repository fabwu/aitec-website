class CreateIntervals < ActiveRecord::Migration
  def change
    create_table :intervals do |t|
      t.datetime :start
      t.datetime :end

      t.timestamps null: false
    end
  end
end
