class CreatePrestations < ActiveRecord::Migration[6.1]
  def change
    create_table :prestations do |t|
      t.string :designation
      t.float :prix
      t.integer :reduction

      t.timestamps
    end
  end
end
