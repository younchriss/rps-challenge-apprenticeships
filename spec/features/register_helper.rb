def register
    visit('/')
    fill_in 'name', with: 'Chris'
    click_button 'Submit'
end