class AddWeekIdToContributions < ActiveRecord::Migration[7.1]
  def change
    add_column :contributions, :week_id, :integer
  end
end
