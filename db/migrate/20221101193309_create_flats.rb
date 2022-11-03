class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :image_url
      t.float :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
