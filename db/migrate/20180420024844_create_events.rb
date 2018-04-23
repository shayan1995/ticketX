class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :performer
      t.string :location
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
