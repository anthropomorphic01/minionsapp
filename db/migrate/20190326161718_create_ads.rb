class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :title, limit:100
      t.string :description, limit:500

      t.timestamps
    end
  end
end
