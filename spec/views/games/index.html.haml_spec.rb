require 'rails_helper'

RSpec.describe "games/index", :type => :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :local => "Local",
        :visitor => "Visitor"
      ),
      Game.create!(
        :local => "Local",
        :visitor => "Visitor"
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => "Local".to_s, :count => 2
    assert_select "tr>td", :text => "Visitor".to_s, :count => 2
  end
end
