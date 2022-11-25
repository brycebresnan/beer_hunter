class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.column :user_name, :string, index: true, unique: true
      t.column :admin, :boolean, default: false
      t.column :password_digest, :string, null: false

      t.timestamps()
    end
  end
end
