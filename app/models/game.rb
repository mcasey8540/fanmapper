class Game < ActiveRecord::Base
  attr_accessible :away_team_id, :game_at, :home_team_id, :home_team, :away_team  # home_team, away_team needed for seed file. Don't think it is necessary for production.
  has_many :bar_games
  has_many :bars, :through => :bar_games

  belongs_to :away_team, :class_name => "Team"
  belongs_to :home_team, :class_name => "Team"

  validate :uniqueness_of_matchup
  validates_presence_of :game_at, :home_team_id, :away_team_id

  def self.with_team(team_id)
    where("home_team_id = ? OR away_team_id = ?", team_id, team_id)
  end

  def self.upcoming(window = 6.days)
    where(:game_at => DateTime.now..(DateTime.now + window))
  end

private
  def uniqueness_of_matchup
    if self.away_team_id == self.home_team_id
      errors.add(:away_team_id, 'team cannot play itself')
    end
  end

end
