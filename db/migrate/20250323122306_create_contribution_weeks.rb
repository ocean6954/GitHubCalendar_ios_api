class CreateContributionWeeks < ActiveRecord::Migration[7.1]
  def change
    create_table :contribution_weeks do |t|

      t.timestamps
    end
  end
end
