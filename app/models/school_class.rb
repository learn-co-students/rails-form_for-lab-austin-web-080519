class SchoolClass < ActiveRecord::Base
    def t_and_l
        "#{self.title} in Room #{self.room_number}"
    end
end
