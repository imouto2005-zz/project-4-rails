class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :cuisine
      t.string :place
      t.integer :user_id

      t.timestamps
    end
  end
end
