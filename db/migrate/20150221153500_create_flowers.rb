class CreateFlowers < ActiveRecord::Migration
  def change
    create_table :flowers do |t|
      t.text :content
      t.integer :bagh_id

      t.timestamps null: false
    end
  end
end
