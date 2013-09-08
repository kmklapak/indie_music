require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'Indie Music'" do
     visit '/static_pages/home'
     expect(page).to have_content('Indie Music')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Indie Music Hub | Home")
    end

  end

  describe "About page" do

    it "should have the content 'About'" do
     visit '/static_pages/about'
     expect(page).to have_content('About')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Indie Music Hub | About")
    end

  end

   describe "Help page" do

    it "should have the content 'Help'" do
     visit '/static_pages/help'
     expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Indie Music Hub | Help")
    end

  end


end
