class AddAddresstoPin < ActiveRecord::Migration
  def up
  end
    add_column :pins, :address, :string
  def down
  end
end
