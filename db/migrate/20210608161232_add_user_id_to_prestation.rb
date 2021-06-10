class AddUserIdToPrestation < ActiveRecord::Migration[6.1]
  def change
    add_column :prestations, :user_id, :integer
  end
end
