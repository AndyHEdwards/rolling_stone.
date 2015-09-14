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

    it "chanes drodown-links when logged in" do
      visit login_path
      expect(page).has_css?('Login')
    end
  end



