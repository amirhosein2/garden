class CreateBaghs < ActiveRecord::Migration
  def change
    create_table :baghs do |t|
      t.string :name
      t.string :address

      t.timestamps null: false
    end
  end
end
