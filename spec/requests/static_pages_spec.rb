require 'spec_helper'

describe "StaticPages" do

  describe "Home Pages" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector "h1", :text => "Sample App"
      #page.should_not have_content "Ruby on Rails Tutorial Sample App | Home"
    end
    #it "should have the right title" do
    #  visit "/static_pages/home"
    #  page.should have_selector("title", :text => "Ruby on Rails Tutorial Sample App | Home")
    #end
  end

  describe "Help Pages" do
    it "should have the content 'Help'" do
      visit "/static_pages/help"
      page.should have_content "Help"
    end
    #it "should have the right title" do
    #  visit "/static_pages/help"
    #  page.should have_selector "title", :text => "Ruby on Rails Tutorial Sample App | Help"
    #end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit "/static_pages/about"
      page.should have_content "About Us"
    end
    #it "should have the right title" do
    #  visit "/static_pages/about"
    #  page.should have_selector "title", :text => "Ruby on Rails Tutorial Sample App | About Us"
   # end
  end


end
