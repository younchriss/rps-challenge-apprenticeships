require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play rock/paper/scissors' do

    scenario 'the marketeer will be presented the choices (rock, paper and scissors)' do
        visit('/')
        fill_in 'name', with: 'Chris'
        click_button 'Submit'
        expect(page).to have_content 'Chris'
        expect(page).to have_content 'Rock'
        expect(page).to have_content 'Paper'
        expect(page).to have_content 'Scissors'
    end

end