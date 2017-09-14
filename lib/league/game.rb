require 'league/team'

module League
  class Game
    TIE = 1
    WIN = 3
    LOSS = 0
    attr_accessor :team_a, :team_b

    def initialize(info)
      @info = info
    end

    def parse
      arr = @info.split(', ')
      @team_a = team(arr[0])
      @team_b = team(arr[1])
    end

    def team(team_string)
      tmp_arr = team_string.split(/\s([\d]*)$/)
      return Team.new(tmp_arr[0], tmp_arr[1].to_i)
    end

    def result
     if team_a.points == team_b.points
        team_a.points = TIE
        team_b.points = TIE
      elsif team_a.points > team_b.points
        team_a.points = WIN
        team_b.points = LOSS
      elsif team_a.points < team_b.points
        team_a.points = LOSS
        team_b.points = WIN
      end
    end
  end
end
