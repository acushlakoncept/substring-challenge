require 'rails_helper'

describe "word submission process", type: :feature do

    it "loads index page" do
      visit root_path
      fill_in 'submission[word]', with: 'pwwkew'
      click_button 'Submit'
      expect(page).to have_content 'wke - 3'
    end
  end