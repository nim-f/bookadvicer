require 'spec_helper'

describe "StaticPages" do
  describe "Help" do
    it "should have the content 'Bookadvicer'" do
      visit '/static_pages/Help'
      expect(page).to have_content('Bookadvicer')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/Help'
      expect(page).to have_title("Help")
    end

  end
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("About Us")
    end
  end

end
