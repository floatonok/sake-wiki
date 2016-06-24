class CreateSakes < ActiveRecord::Migration[5.0]
  def change
    create_table :sakes do |t|
      t.string :title
      t.string :header_1
      t.string :header_2
      t.text :overview
      t.text :text_1
      t.text :text_2
      t.string :characters
      t.string :main_image
      t.string :image_1
      t.string :image_2

      t.timestamps
    end
  end
end
