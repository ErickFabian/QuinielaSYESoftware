require 'rails_helper'

RSpec.describe "games/new", :type => :view do
  before(:each) do
    assign(:game, Game.new(
      :local => "MyString",
      :visitor => "MyString"
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input#game_local[name=?]", "game[local]"

      assert_select "input#game_visitor[name=?]", "game[visitor]"
    end
  end
end
