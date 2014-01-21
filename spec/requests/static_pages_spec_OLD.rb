require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      expect(page).to have_content('Sample App')
      end

    it "Should have the right title!" do
      visit root_path
      expect(page).to have_title("RoR Tutorial Sample App")
    end

    it "Should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end

  end

  describe "Help Page" do
    it "Should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

     it "Should have the right title!" do
      visit help_path
      expect(page).to have_title("RoR Tutorial Sample App | Help")
    end

  end
  
  describe "About Page" do
    it "Should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

       it "Should have the right title!" do
      visit about_path
      expect(page).to have_title("RoR Tutorial Sample App | About Us")
    end

  end

  describe "Contact page" do
    it "Should have content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "Should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("RoR Tutorial Sample App | Contact")
    end

  end


end
