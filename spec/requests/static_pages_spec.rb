require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
      end

    it "Should have the right title!" do
      visit '/static_pages/home'
      expect(page).to have_title("RoR Tutorial Sample App")
    end

    it "Should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end

  end

  describe "Help Page" do
    it "Should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

     it "Should have the right title!" do
      visit '/static_pages/help'
      expect(page).to have_title("RoR Tutorial Sample App | Help")
    end

  end
  
  describe "About Page" do
    it "Should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

       it "Should have the right title!" do
      visit '/static_pages/about'
      expect(page).to have_title("RoR Tutorial Sample App | About Us")
    end

  end



end
