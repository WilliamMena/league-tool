require 'rails_helper'

RSpec.describe Team, "#all_games" do
  let(:team) { Team.first }

  it "Returns all games included in both team_1_id and team_2_id" do
    # expect(team.all_games).to be > team.games
  end

end
