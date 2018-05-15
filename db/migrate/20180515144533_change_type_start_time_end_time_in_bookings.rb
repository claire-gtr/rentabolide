class ChangeTypeStartTimeEndTimeInBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :start_time, :string
    remove_column :bookings, :end_time, :string
    add_column :bookings, :start_time, :date
    add_column :bookings, :end_time, :date
  end
end
