require 'spec_helper'
describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the content 'Sharee'" do
      visit '/static_pages/home'
      page.should have_content('Sharee')
    end 
    
    it "should have the title 'Sharee etc'" do
          visit '/static_pages/home'
          page.should have_selector('title', :text => "Sharee, createurs d'experiences")
    end
    
  end


  describe "About page" do
    
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end 
    
    it "should have the title 'About'" do
          visit '/static_pages/about'
          page.should have_selector('title', :text => "Sharee, createurs d'experiences | About")
    end
    
  end
  
end

