require 'spec_helper'

describe "films/new.html.erb" do
  before(:each) do
    assign(:film, stub_model(Film,
      :title => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new film form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => films_path, :method => "post" do
      assert_select "input#film_title", :name => "film[title]"
      assert_select "input#film_url", :name => "film[url]"
    end
  end
end
