require 'league'

describe League::Soccer do
  before(:all) do
    @fixtures_path = "spec/fixtures"
  end

  before do
    @league = League::Soccer.new(@fixtures_path + '/sample-input.txt')
  end
 
  it 'should able to parse the input file' do
    @league.parse
    expect(@league.teams.size).to be > 0
  end

  it 'should get top scorer name in league' do
    @league.parse
    @league.ranking

    expect(@league.teams.first.name).to be == "Eagle"
  end
  
  it 'should get top scorer points in league' do
    @league.parse
    @league.ranking

    expect(@league.teams.first.points).to be == 3
  end

  it 'should get least scorer name in league' do
    @league.parse
    @league.ranking

    expect(@league.teams.last.name).to be == "Tigers"
  end
  
  it 'should get least scorer points in league' do
    @league.parse
    @league.ranking

    expect(@league.teams.last.points).to be == 0
  end 
end



