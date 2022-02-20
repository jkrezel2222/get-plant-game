class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.text :title, null: false
      t.text :image
      t.text :description, null: false
      t.string :listing_id

      t.timestamps
    end
  end
end
