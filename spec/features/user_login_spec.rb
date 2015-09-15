require 'rails_helper'

  feature "Login " do

    it "form displays flash message when invalid" do
      visit login_path
      fill_in('Email', :with => '')
      fill_in('Password', :with => '')
      click_button("Log in")
      expect(page).to have_content("Invalid email/password combination")
      visit root_path
      expect(page).to_not have_content("Invalid email/password combination")
    end

    it "chanes dropdown-links when logged in" do
      visit login_path
      page.has_css?('Login')
      fill_in('Email', :with => 'email@example.com')
      fill_in('Password', :with => 'password')
      click_button("Log in")
      page.has_css?('Log out')
    end
  end



