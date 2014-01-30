class AddDetailsToPins < ActiveRecord::Migration
  def change
    add_column :pins, :x_position, :string
    add_column :pins, :y_position, :string
    add_column :pins, :p_height, :string
    add_column :pins, :p_width, :string
  end
end
