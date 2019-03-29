class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :title, limit:100
      t.string :description, limit:500
      t.string :img, limit:500
      t.string :views, limit: 10
      
      t.references :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
