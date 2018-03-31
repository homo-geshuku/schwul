class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :type, null: false
      t.string :title, null: false
      t.text :description, null: false
      t.integer :year_produced, null: false

      t.timestamps
    end

    add_index :products, :title, unique: true
  end
end
