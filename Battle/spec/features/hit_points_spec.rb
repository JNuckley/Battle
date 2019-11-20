feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :p1_name, with: 'Jo'
    fill_in :p2_name, with: 'Matt'
    click_button 'Submit'
    expect(page).to have_content "Jo vs Matt\nMatt: 50HP"
  end
end
