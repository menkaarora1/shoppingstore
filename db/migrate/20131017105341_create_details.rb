class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :name
      t.string :gender
      t.text :address
      t.references :user, index: true

      t.timestamps
    end
  end
end
