class CreateCommments < ActiveRecord::Migration[5.0]
  def change
    create_table :commments do |t|
      t.string :name
      t.text :body
      t.integer :commmentable_id
      t.string :commmentable_type

      t.timestamps
    end
  end
end
