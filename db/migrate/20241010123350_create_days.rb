class CreateDays < ActiveRecord::Migration[7.1]
  def change
    create_table :days do |t|
      t.date :contribution_day, null: false
      t.integer :contribution_count, null: false
      t.integer :week_id, null: false
      t.timestamps
    end
  end
end
