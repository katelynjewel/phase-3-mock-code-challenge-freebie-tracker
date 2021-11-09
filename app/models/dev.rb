class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        "#{freebie.item_name}" ? ture : false 
    end

    def give_away dev, freebie
        binding.pry
    end
end
