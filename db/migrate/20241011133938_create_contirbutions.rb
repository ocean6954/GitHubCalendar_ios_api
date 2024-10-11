class CreateContirbutions < ActiveRecord::Migration[7.1]
  def change
    create_table :contirbutions do |t|
      t.string :user_name, null: false
      t.timestamps
    end
  end
end
