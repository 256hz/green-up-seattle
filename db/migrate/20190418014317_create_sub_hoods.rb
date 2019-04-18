class CreateSubHoods < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_hoods do |t|
      t.string :name
      t.integer :hood_id

      t.timestamps
    end
  end
end
