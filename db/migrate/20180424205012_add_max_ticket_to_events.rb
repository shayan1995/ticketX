class AddMaxTicketToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :max_ticket, :integer
  end
end
