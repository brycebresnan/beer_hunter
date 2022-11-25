class CreateLocationsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.column :location_name, :string
      t.column :address, :string
      t.column :zip, :integer
      t.column :type, :string
      t.column :overall_rating, :decimal, precision: 3, scale: 2

      t.timestamps()
    end
  end
end
