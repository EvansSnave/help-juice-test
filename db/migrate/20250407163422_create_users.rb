class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :ip_address

      t.timestamps
    end

    add_index :users, :ip_address, unique: true
  end
end
