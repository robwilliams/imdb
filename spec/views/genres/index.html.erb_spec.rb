require 'spec_helper'

describe "genres/index.html.erb" do
  before(:each) do
    assign(:genres, [
      stub_model(Genre,
        :title => "Title"
      ),
      stub_model(Genre,
        :title => "Title"
      )
    ])
  end

  it "renders a list of genres" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
