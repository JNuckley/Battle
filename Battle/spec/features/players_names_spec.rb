feature 'Testing input and redirect' do

  scenario 'Displays names from a form on a new page' do
    sign_in_and_play
    expect(page).to have_content 'Jo vs. Matt'
  end
end
