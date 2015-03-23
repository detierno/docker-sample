class CreateWatches < ActiveRecord::Migration
  def change
    create_table :watches do |t|
      t.string :brand
      t.string :model
      t.string :picture

      t.timestamps null: false
    end
  end
end
