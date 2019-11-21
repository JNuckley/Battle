feature 'Attacking' do

  scenario 'attack Player 2 and reduce HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Matt: 50HP'
    expect(page).to have_content 'Matt: 40HP'
  end

  scenario 'be attacked by player 2' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    click_link 'Attack'
    expect(page).to have_content 'Matt attacked Jo'
  end
end
