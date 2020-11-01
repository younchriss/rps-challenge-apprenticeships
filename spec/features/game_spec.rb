require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play rock/paper/scissors' do

    scenario 'the marketeer will be presented the choices (rock, paper and scissors)' do
        register
        expect(page).to have_button 'Rock'
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end

    scenario 'the marketeer can choose one option' do
        visit '/game'
        click_button 'Rock'
        expect(page).to have_content 'You chose Rock'
    end


end