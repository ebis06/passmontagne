require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content of h1 to 'Pass Montagne'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Pass Montagne')
    end

    it "should have the content of title to 'Accueil'" do
      visit '/static_pages/home'
      page.should have_selector('title' ,
                      :text => "Pass Montagne | Accueil")
    end

  end
  
  describe "Help page" do

    it "should have the content of h1 to 'Aide'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Aide')
    end

    it "should have the content of title to 'Aide'" do
      visit '/static_pages/help'
      page.should have_selector('title' , 
                    :text => "Pass Montagne | Aide")
    end

  end
  
  describe "A propos" do

    it "should have the content of h1 to 'A propos'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'A propos')
    end

    it "should have the content of title to 'A propos'" do
      visit '/static_pages/about'
      page.should have_selector('title' , :text => "Pass Montagne | A propos")
    end


  end

  describe "Contact" do

    it "should have the content of h1 to 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the content of title to 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title' , :text => "Pass Montagne | Contact")
    end


  end


end
