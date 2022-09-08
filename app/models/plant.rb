class Plant < ActiveRecord::Base
    has_many :purchases
    has_many :buyers, through: :purchases
end