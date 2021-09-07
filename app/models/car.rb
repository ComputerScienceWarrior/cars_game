class Car < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    belongs_to :team
    def average_win_percentage
        self.wins / self.losses
    end
end
