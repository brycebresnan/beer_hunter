class ChangeTypeColumnInLocationsTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :locations, :type
    add_column :locations, :category, :string
  end
end
