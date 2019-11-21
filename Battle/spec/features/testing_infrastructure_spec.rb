feature 'testing infrastructure' do
  
  scenario 'Displays title on homepage' do
    visit('/')
    expect(page).to have_content 'BATTLE GAME!'
  end
end
