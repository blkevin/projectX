class ChangeColumnTypeMeeting < ActiveRecord::Migration[7.0]
  def change
    change_column :meetings, :starting, :datetime, null: false
    change_column :meetings, :ending, :datetime, null: false
  end
end
