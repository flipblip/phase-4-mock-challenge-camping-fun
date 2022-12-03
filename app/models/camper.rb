class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, presence: true

    validates :age, presence: true
    validate :age_range

    def age_range
        if !(age < 18 && age > 8)
            errors.add(:age, "Age should be between 8 and 18")
        end
    end
end
