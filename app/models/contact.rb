class Contact < ApplicationRecord
    
    has_many :prestations
    has_many :plannifications
    belongs_to :user

end
