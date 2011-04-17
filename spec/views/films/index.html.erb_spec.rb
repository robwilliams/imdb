require 'spec_helper'

describe "films/index.html.erb" do
  before(:each) do
    assign(:films, [
      stub_model(Film,
        :title => "Title",
        :url => "Url"
      ),
      stub_model(Film,
        :title => "Title",
        :url => "Url"
      )
    ])
  end

  it "renders a list of films" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
