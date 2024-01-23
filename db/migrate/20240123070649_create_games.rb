class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.float :price
      t.string :platform

      t.timestamps
    end
  end
end
