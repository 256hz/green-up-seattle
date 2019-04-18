class CreateSubHoods < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_hoods do |t|
      t.integer :hood_id
      t.string :name
    end
  end
end
