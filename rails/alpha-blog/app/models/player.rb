class Player < ApplicationRecord
  belongs_to :team

  after_create :update_no_of_players

  def update_no_of_players
    puts ("count before #{self.team.players_count} ")
    self.team.players_count += 1
    puts ("count after #{self.team.players_count} ")
    self.team.save
  end
end
