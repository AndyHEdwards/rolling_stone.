require 'rails_helper'

  feature "Edit form" do

    it "doesnt create user if any field is invalid" do
      visit edit_user_path
      click_button("Save changes")
      expect(view).to render_template(:edit)
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



