class CreateContributions < ActiveRecord::Migration[7.1]
  def change
    create_table :contributions do |t|
      t.date :date
      t.integer :contribution_count

      t.timestamps
    end
  end
end
