class AddIsCurrentToInterval < ActiveRecord::Migration
  def change
    add_column :intervals, :is_current, :boolean, :default => false
  end
end
