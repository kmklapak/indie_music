require 'spec_helper'

describe "StaticPages" do

  let(:baseTitle) { "Indie Music Hub" }

  describe "Home page" do

    it "should have the content 'Indie Music'" do
     visit '/static_pages/home'
     expect(page).to have_content('Indie Music')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title(baseTitle)
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end

  end

  describe "About page" do

    it "should have the content 'About'" do
     visit '/static_pages/about'
     expect(page).to have_content('About')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title(baseTitle + " | About")
    end

  end

   describe "Help page" do

    it "should have the content 'Help'" do
     visit '/static_pages/help'
     expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title(baseTitle + " | Help")
    end

  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
     visit '/static_pages/contact'
     expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title(baseTitle + " | Contact")
    end

  end


end
