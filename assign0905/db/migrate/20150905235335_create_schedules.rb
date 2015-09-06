class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :support, index: true
      t.date :dateshedule
      t.string :vacation

      t.timestamps
    end
  end
end
