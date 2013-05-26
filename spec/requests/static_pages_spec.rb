require 'spec_helper'
describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the content 'Sharee'" do
      visit root_path
      page.should have_content('Sharee')
    end 
    
    it "should have the title 'Sharee etc'" do
          visit root_path
          page.should have_selector('title', :text => "Sharee, createurs d'experiences")
    end
    
  end


  describe "About page" do
    
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end 
    
    it "should have the title 'About'" do
          visit about_path
          page.should have_selector('title', :text => "Sharee, createurs d'experiences | About")
    end
    
  end
  
  describe "Contact page" do
    
    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end
    
    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', text: "Sharee, createurs d'experiences | Contact")
    end
  end
  
end

