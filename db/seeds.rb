# 10.times do |i|
#     Team.create(name: "Best team ##{i + 1}", total_wins: i + 1, total_losses: 2, rank: i + 2)
# end

car_names = ["King of the Road", "Blitzspeeder", "Purple Forward Force", "Green Forward Force", "Van #2", "Circle Tracker", "Van # 3", "Van # 1", "toolworx", "Retroactive"]

10.times do |i|
    Car.create(name: car_names[i], level: 1, attack: 5, durability: 4, speed: 5, wins: 0, losses: 0, rank: 1, exp_points: 0, team_id: i + 1)
end
