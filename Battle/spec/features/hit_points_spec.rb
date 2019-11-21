feature 'View hit points' do

  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Jo vs. Matt Jo: 50HP Matt: 50HP"
  end
end
