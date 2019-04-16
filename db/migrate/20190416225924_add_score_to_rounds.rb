class AddScoreToRounds < ActiveRecord::Migration[5.2]
  def change
    add_column :rounds, :score, :integer
  end
end
