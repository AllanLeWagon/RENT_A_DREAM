class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :image_url
      t.references :user, null: false, foreign_key: true
      t.string :service_type

      t.timestamps
    end
  end
end
