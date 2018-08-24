class CreateCaterings < ActiveRecord::Migration[5.2]
  def change
    create_table :caterings do |t|
      t.string :name     ,null: false
      t.string :city     ,null: false
      t.text :description

      t.timestamps
    end
  end
end