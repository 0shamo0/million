class AddPrestationIdToPlannifications < ActiveRecord::Migration[6.1]
  def change
    add_column :plannifications, :prestation_id, :integer
  end
end
