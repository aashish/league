require 'league'
require 'league/game'

describe League::Game do
  before do
    @game = League::Game.new('Tarantulas 3, Snakes 1')
  end
 
  it 'should able to parse to 2 teams' do
    @game.parse
    expect(@game.team_a).not_to be_nil
    expect(@game.team_b).not_to be_nil
  end

  it 'should be a valid team a' do
    @game.parse
    expect(@game.team_a.name).to be == 'Tarantulas'
  end

  it 'should be a valid team b' do
    @game.parse
    expect(@game.team_b.points).to be == 1
  end

  it 'should be a tie' do
    @game = League::Game.new('Tarantulas 3, Snakes 3')
    @game.parse
    @game.result
    expect(@game.team_a.points).to be == 1
    expect(@game.team_b.points).to be == 1
  end

  it 'should be a win' do
    @game = League::Game.new('Tarantulas 3, Snakes 1')
    @game.parse
    @game.result
    expect(@game.team_a.points).to be == 3
    expect(@game.team_b.points).to be == 0
  end

  it 'should be a loss' do
    @game = League::Game.new('Tarantulas 1, Snakes 5')
    @game.parse
    @game.result
    expect(@game.team_a.points).to be == 0
    expect(@game.team_b.points).to be == 3
  end

end





