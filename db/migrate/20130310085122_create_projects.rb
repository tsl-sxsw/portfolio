class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :tags
      t.string :image_1
      t.string :image_2
      t.string :image_3

      t.timestamps
    end
  end
end
