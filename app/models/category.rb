class Category < ActiveRecord::Base
    has_many :events

    def self.find_all(id)
        self.all.find(id)
    end
end

#lets add some custom methods