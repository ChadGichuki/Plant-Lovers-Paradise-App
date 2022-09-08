class Purchase < ActiveRecord::Base 
    belongs_to :buyer
    belongs_to :plant
end