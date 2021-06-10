class Prestation < ApplicationRecord
   
    belongs_to :user
    belongs_to :contact, :optional => true
    has_one :plannification

end
