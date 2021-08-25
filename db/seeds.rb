10.times do |i|
    Team.create(name: "Best team ##{i + 1}", total_wins: i + 1, total_losses: 2, rank: i + 2)
end

