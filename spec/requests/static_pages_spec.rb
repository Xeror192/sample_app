require 'spec_helper'

describe "Static pages" do

    subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should_not have_title('| Home') }
  end

    subject { page }

  describe "Help page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should_not have_title('| Help') }
  end

    subject { page }

  describe "About page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should_not have_title('| About') }
  end

    subject { page }

  describe "Contact page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should_not have_title('| Contact') }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About" 
    expect(page).to have_title('About Us')
    click_link "Help"
    expect(page).to have_title('Help')
    click_link "Contact"
    expect(page).to have_title('Contact')
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title('Sign up')
  end
end