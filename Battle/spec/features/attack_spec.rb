feature 'Attacking' do

  scenario 'attack Player 2 and reduce HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'Ok'
    expect(page).not_to have_content 'Matt: 50HP'
    expect(page).to have_content 'Matt: 40HP'
  end
end
