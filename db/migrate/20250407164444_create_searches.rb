class CreateSearches < ActiveRecord::Migration[7.1]
  def change
    create_table :searches do |t|
      t.references :search, foreign_key: { to_table: :users }
      t.text :search_content

      t.timestamps
    end
  end
end
