require 'spec_helper'

describe StaticPagesController do

  describe "GET 'Feedback'" do
    it "returns http success" do
      get 'Feedback'
      response.should be_success
    end
  end

  describe "GET 'Help'" do
    it "returns http success" do
      get 'Help'
      response.should be_success
    end
  end

end
