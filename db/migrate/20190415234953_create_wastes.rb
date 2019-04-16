class CreateWastes < ActiveRecord::Migration[5.2]
  def change
    create_table :wastes do |t|
      t.string :name
      t.string :category
      t.string :img_url

      t.timestamps
    end
  end
end
