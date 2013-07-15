require 'spec_helper'

describe "StaticPages" do
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  subject { page }

  describe "Home Pages" do
    
    before { visit root_path }
    
    it { should have_selector "h1", :text => "Sample App" }
   #it { should have_selector "title", :text => (full_title "") }
   #it { should_not have_selector "title", :text => (full_title "Home") }
  end

  describe "Help Pages" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector "h1" , :text => "Help"
    end
    #it "should have the right title" do
    #  visit "/static_pages/help"
    #  page.should have_selector "title", :text => "#{base_title} | Help"
    #end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector "h1", :text => "About Us"
    end
    #it "should have the right title" do
    #  visit "/static_pages/about"
    #  page.should have_selector "title", :text => "#{base_title} | About Us"
   # end
  end
  
  describe "Contact Page" do
    it "should have the content 'Contacts'" do
      visit contact_path
      page.should have_selector "h1", text: "Contact"
    end
  end


end
