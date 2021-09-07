class Team < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    has_many :cars
    accepts_nested_attributes_for :cars
end
