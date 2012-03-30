class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :title
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
