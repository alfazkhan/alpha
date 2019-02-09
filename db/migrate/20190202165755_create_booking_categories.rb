class CreateBookingCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_categories do |t|
      t.integer :booking_id
      t.integer :category_id

    end
  end
end
