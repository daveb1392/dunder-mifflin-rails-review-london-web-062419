class Employee < ApplicationRecord
    belongs_to :dog
    validates :first_name, :last_name, :alias, :title, :office, {presence: true, uniqueness: true}

    def full_name
        self.first_name + ' ' + self.last_name
    end
end
