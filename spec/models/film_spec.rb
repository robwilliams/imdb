require 'spec_helper'

describe Film do
  it "should not be valid if rating is nil" do
    film = Film.new
    film.valid?.should == false
  end
  
  it "should not be valid if rating is not a number" do
    film = Film.new(:rating => 'numberd00b')
    film.valid?.should == false    
  end

  it "should not be valid if rating is not between 1 and 5" do
    {
     '0' => false, 
     '1' => true, 
     '5' => true,
     '6' => false
    }.map do |number, should_be_valid|
      film = Film.new(:rating => number)
      film.valid?.should == should_be_valid
    end
  end
end

# == Schema Information
#
# Table name: films
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  rating     :integer
#

