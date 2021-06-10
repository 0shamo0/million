class AddUserIdToPlannification < ActiveRecord::Migration[6.1]
  def change
    add_column :plannifications, :user_id, :integer
  end
end
