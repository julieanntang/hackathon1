class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :contact
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
