class Job < ApplicationRecord
    validates :name, :description, :salary, presence: true
end
