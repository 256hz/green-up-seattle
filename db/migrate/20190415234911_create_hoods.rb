class CreateHoods < ActiveRecord::Migration[5.2]
  def change
    create_table :hoods do |t|
      t.string :name
      t.integer :hood_score

      t.timestamps
    end
  end
end
