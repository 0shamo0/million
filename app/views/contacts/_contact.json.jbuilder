json.extract! contact, :id, :nom, :prenom, :adresse, :telephone, :string, :email_client, :created_at, :updated_at
json.url contact_url(contact, format: :json)
