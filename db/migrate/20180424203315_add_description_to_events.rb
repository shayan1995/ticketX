class AddDescriptionToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :descrip, :string
  end
end
