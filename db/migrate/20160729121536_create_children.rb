class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.integer :gender
      t.date :dob
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
