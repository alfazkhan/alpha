class AddRating < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :Rating, :integer
  end
end
