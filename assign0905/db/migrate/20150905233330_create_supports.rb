class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :name
      t.integer :phn
      t.string :email

      t.timestamps
    end
  end
end
