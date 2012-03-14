require 'spec_helper'

describe "StaticPages" do
  subject {page}

  describe "Home page" do
    before {visit root_path}
    it { should have_selector('h1',    text: 'Pass Montagne') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Accueil' }
  end
  
  describe "Help page" do
    before {visit help_path}
    it {should have_selector('h1', text: 'Aide')}
    it {should have_selector('title' , text: "Pass Montagne | Aide")}
  end
  
  describe "A propos" do
    before {visit about_path}
    it {should have_selector('h1', text: 'A propos')}
    it {should have_selector('title' , text: "Pass Montagne | A propos")}
  end

  describe "Contact" do
    before {visit contact_path}
    it {should have_selector('h1', text: 'Contact')}
    it {should have_selector('title' , text: "Pass Montagne | Contact")}
  end
end
