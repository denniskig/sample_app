require 'minitest/autorun'
require 'spec_helper'

describe "StaticPages" do

  describe "GET /static_pages/home" do
    it "should contain 'Sample App'" do
    	visit static_pages_home_path
    	expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
		  visit static_pages_home_path
		  expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
		end
  end

  describe "GET /static_pages/help" do
  	it "should contain 'Help" do
  		visit static_pages_help_path
  		expect(page).to have_content('Help')
    end

    it "should have the right title" do
		  visit static_pages_help_path
		  expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
		end
  end 

  # Adding an about page
  describe "GET /static_pages/about" do
  	it "should contain 'About Us'" do 
  		visit static_pages_about_path
  		expect(page).to have_content('About Us')
  	end

  	it "should have the right title" do
  		visit static_pages_about_path
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
		end
	end
end

