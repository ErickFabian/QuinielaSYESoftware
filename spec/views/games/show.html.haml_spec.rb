require 'rails_helper'

RSpec.describe "games/show", :type => :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :local => "Local",
      :visitor => "Visitor"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Local/)
    expect(rendered).to match(/Visitor/)
  end
end
