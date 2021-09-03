class Car < ApplicationRecord
    belongs_to :team

    extend FriendlyId
    friendly_id :name, use: :slugged

    def average_win_percentage
        self.wins / self.losses
    end
end
