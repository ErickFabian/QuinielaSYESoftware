require 'rails_helper'

RSpec.describe "games/edit", :type => :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :local => "MyString",
      :visitor => "MyString"
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#game_local[name=?]", "game[local]"

      assert_select "input#game_visitor[name=?]", "game[visitor]"
    end
  end
end
