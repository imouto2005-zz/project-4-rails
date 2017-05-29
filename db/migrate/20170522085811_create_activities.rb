class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
