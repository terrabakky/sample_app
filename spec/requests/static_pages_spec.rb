require 'spec_helper'

describe "StaticPages" do
	
	describe "Home page" do

		it "should have the h1  'Sample App'" do
			visit '/static_pages/home'
	   		page.should have_selector('h1', :text => 'Sample App')
	 	end

		it "should have the base title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "RoR Sample App")
		end
	end

	describe "Help page" do

		it "should have the content 'Help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end

		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "Sample App | Help")
		end
	end
		
	describe "About page" do

		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			page.should have_content('About Us')
		end

		it "should have the title 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "Sample App | About Us")
		end
	end
end

