require 'spec_helper'

describe "StaticPages" do
  subject {page}

  shared_examples_for "all static pages" do
    it { should have_selector('h1',    text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Home page" do
    before {visit root_path}
    let(:heading) {'Pass Montagne'}
    let(:page_title) {''}
    
    it_should_behave_like "all static pages"
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
