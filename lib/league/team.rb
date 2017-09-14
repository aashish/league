module League
  class Team
    attr_accessor :name, :points

    def initialize(name, points)
      @name = name
      @points = points
    end
  end
end
