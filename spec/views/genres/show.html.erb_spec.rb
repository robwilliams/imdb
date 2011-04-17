require 'spec_helper'

describe "genres/show.html.erb" do
  before(:each) do
    @genre = assign(:genre, stub_model(Genre,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
