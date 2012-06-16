require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text =>'PlannerGrid')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "PlannerGrid | Home")
    end
  end
  
  describe "Help Page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the title 'Help" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "PlannerGrid | Help")
    end
  end
  
  describe "About Page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About Us")
    end
    
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "PlannerGrid | About Us")
    end
  end
  
end