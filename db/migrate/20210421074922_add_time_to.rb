class AddTimeTo < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :time, :boolean
  end
end
