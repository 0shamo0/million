class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :nom
      t.string :prenom
      t.text :adresse
      t.string :telephone
      t.string :string
      t.string :email_client

      t.timestamps
    end
  end
end
