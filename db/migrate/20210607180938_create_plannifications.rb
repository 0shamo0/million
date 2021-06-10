class CreatePlannifications < ActiveRecord::Migration[6.1]
  def change
    create_table :plannifications do |t|
      t.date :date
      t.text :localisation
      t.boolean :etat

      t.timestamps
    end
  end
end
