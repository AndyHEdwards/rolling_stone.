require 'rails_helper'

  feature "Sign up form" do

    before(:each) do
      visit new_user_path
    end

    it "doesnt create user if any field is invalid" do
      click_button("Create my account")
        if page.has_css?('.field_with_errors')
          expect {
            click_button("Create my account")
          }.to change{User.count}.by(0)
        end
      end

      # it "creates a user if sign up info is valid" do
      #   fill_in('Name', :with => 'Andy')
      #   fill_in('Email', :with => 'andy@gmail.com')
      #   fill_in('Password', :with => 'password')
      #   fill_in('Confirmation', :with => 'password')
      #   expect {
      #     click_button("Create my account")
      #   }.to change{User.count}.by(+1)
      # end
    end



