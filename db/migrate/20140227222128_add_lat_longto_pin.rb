class AddLatLongtoPin < ActiveRecord::Migration
  def up
  end
    add_column :pins, :latitude, :string
    add_column :pins, :longitude, :string
  def down
  end
end
