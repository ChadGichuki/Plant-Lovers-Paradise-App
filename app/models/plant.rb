class Plant < ActiveRecord::Base
    has_many :purchases
    has_many :buyers, through: :purchases

    #Order plants by no. of purchases
    def self.by_purchases
        self.all.order(purchases: :desc)
    end
end