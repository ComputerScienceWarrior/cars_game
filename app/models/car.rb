class Car < ApplicationRecord
    belongs_to :team

    def average_win_percentage
        self.wins / self.losses
    end
end
