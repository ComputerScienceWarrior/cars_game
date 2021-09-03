class Team < ApplicationRecord
    has_many :cars
    accepts_nested_attributes_for :cars
    extend FriendlyId
    friendly_id :name, use: :slugged
end
