class Plannification < ApplicationRecord
    
    belongs_to :user
    belongs_to :contact, :optional => true
    belongs_to :prestation

end
