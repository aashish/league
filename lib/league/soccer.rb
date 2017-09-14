require 'league/game'

module League
  class Soccer
    attr_accessor :teams, :results_file
    def initialize(results_file)
      @results_file = File.read(results_file)
      @teams = []
    end
  
    def parse
      results_file.each_line do |line|
        line.gsub!("\n", "")
        
        game = Game.new(line)
        game.parse
        game.result

        push_to_teams(game.team_a)
        push_to_teams(game.team_b)
      end
    end
 
    def push_to_teams(tm)
      team = teams.find {|t| t.name == tm.name}
      
      if team 
        team.points = team.points + tm.points
      else
        @teams << tm
      end
    end

    def ranking
     @teams.sort_by! { |team| [-team.points, team.name] }
    end

    def result
      parse
      ranking
      
      puts "Please find the teams with ranks of the league below:" 
      @teams.each_with_index do |team, index|
        puts("#{index + 1}. #{team.name} #{team.points} pts")
      end
    end
  end
end

 
