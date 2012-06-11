require 'spec_helper'

describe "StaticPages" do
	
	describe "Home page" do

		it "should have the h1  'Sample App'" do
			visit root_path
	   		page.should have_selector('h1', :text => 'Sample App')
	 	end

		it "should have the base title" do
			visit root_path
			page.should have_selector('title', :text => "RoR Sample App")
		end
	end

	describe "Help page" do

		it "should have the content 'Help'" do
			visit help_path
			page.should have_content('Help')
		end

		it "should have the title 'Help'" do
			visit help_path
			page.should have_selector('title', :text => "Sample App | Help")
		end
	end
		
	describe "About page" do

		it "should have the content 'About Us'" do
			visit about_path
			page.should have_content('About Us')
		end

		it "should have the title 'About Us'" do
			visit about_path
			page.should have_selector('title', :text => "Sample App | About Us")
		end
	end

	describe "Contact Us" do

		it "should have the content 'Contact Us'" do
			visit contact_path
			page.should have_content('Contact Us')
		end

		it "should have the title 'Contact Us'" do
			visit contact_path
			page.should have_selector('title', :text => "Sample App | Contact Us")
		end
	end
end
