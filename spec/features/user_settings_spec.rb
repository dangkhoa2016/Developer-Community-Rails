require 'rails_helper'

RSpec.feature 'UserSettings', type: :feature do
  describe 'User Settings' do
    before :each do
      @user = create(:user)
      sign_in(@user)
      sleep 1
    end

    it 'should allow users to edit their personal information' do
      visit "/member/#{@user.id}"
      sleep 2
      expect(page).to have_text(@user.name)
      expect(page).to have_text(@user.address)
      expect(page).to have_text(@user.profile_title)
      expect(page).to have_text('About')
      expect(page).to have_text(@user.about)
      find(:xpath, '//a[contains(@class, "edit-profile")]//i[contains(@class, "fa-solid fa-pencil")]').click
      sleep 5
      expect(page).to have_text('Edit Your Personal Details')
      fill_in 'user_first_name', with: 'Marks'
      fill_in 'user_last_name', with: 'Anderson'
      fill_in 'user_city', with: 'Indore'
      # fill_in 'user_state', with: 'Madhya Pradesh'
      select 'India', from: 'user_country'
      fill_in 'user_pincode', with: '1234567890'
      fill_in 'user_profile_title', with: 'Advanced Ruby on Rails Developer'
      sleep 2
      click_button 'Save Changes'
      visit "/member/#{@user.id}"
      expect(page).to have_current_path("/member/#{@user.id}")
      expect(page).to have_text('Marks Anderson')
      expect(page).to have_text('Advanced Ruby on Rails Developer')
      expect(page).to have_text('Indore, AN, IN, 1234567890')
    end

    it 'should allow users to edit their about/description' do
      visit "/member/#{@user.id}"
      sleep 2
      expect(page).to have_text(@user.name)
      expect(page).to have_text(@user.address)
      expect(page).to have_text(@user.profile_title)
      expect(page).to have_text('About')
      expect(page).to have_text(@user.about)
      find(:xpath, '//a[contains(@class, "edit-about")]//i[contains(@class, "fa-solid fa-pencil")]').click
      sleep 5
      expect(page).to have_text('Edit your description')
      expect(page).to have_text('It is a long established fact that a reader will be distracted by the readable')

      fill_in 'user_about', with: 'Lorem Ipsum....'
      sleep 2
      click_button 'Save Changes'
      expect(page).to have_current_path("/member/#{@user.id}")
      expect(page).to have_text('Lorem Ipsum....')
      sleep 5
    end
  end
end
