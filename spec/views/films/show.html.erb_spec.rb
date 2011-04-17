require 'spec_helper'

describe "films/show.html.erb" do
  before(:each) do
    @film = assign(:film, stub_model(Film,
      :title => "Title",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
  end
end
