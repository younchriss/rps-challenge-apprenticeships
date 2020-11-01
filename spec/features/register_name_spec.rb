require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'register name' do
    scenario 'register name' do
        visit('/')
        fill_in 'name', with: 'Chris'
        click_button 'Submit'
        expect(page).to have_content 'Chris'
    end
end