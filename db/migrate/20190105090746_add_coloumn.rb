class AddColoumn < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :Description, :text
    add_column :bookings, :created_at, :datetime
    add_column :bookings, :updated_at, :datetime
  end
end
