class AddContactIdToPlannifications < ActiveRecord::Migration[6.1]
  def change
    add_column :plannifications, :contact_id, :integer
  end
end
