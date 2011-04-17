require 'spec_helper'

describe "films/edit.html.erb" do
  before(:each) do
    @film = assign(:film, stub_model(Film,
      :title => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit film form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => films_path(@film), :method => "post" do
      assert_select "input#film_title", :name => "film[title]"
      assert_select "input#film_url", :name => "film[url]"
    end
  end
end
